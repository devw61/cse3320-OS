#ifndef PARSE_C
#define PARSE_C
#include "parse.h"

// code
cartridge *run_parse(char *file_path) {
  header *header_info = init_header_struct();
  FILE *file = fopen(file_path, "rb");
  
  // Validate File Integrity with crc32
  int validated = validate_file(file_path);

  if (!validated) {
    printf("File integrity validation failed.\n");

    fclose(file);
    close_header(header_info);

    exit(1);
  }

  printf("Validated File Integrity.\n");

  // read header
  read_header(header_info, file);

  // make sure it is an NES file
  assert(strcmp(header_info->file_type, "NES\x1A") == 0);

  // ROM sizes
  prg_rom_size = 16384 * (header_info->prg_rom_bytes); // 16KB * bytes
  chr_rom_size = header_info->chr_rom_bytes > 0
                     ? 8192 * (header_info->chr_rom_bytes) // 8KB * bytes
                     : 8192;                               // default 8 KB

  // check for trainer
  if (header_info->flags[0] & 0x04) { // 4th bit raised if trainer exists
    fseek(file, 512, SEEK_CUR);       // skip trainer
  }

  // read ROM data
  char *prg_rom = (char *)malloc(prg_rom_size);
  char *chr_rom = (char *)malloc(chr_rom_size);

  fread(prg_rom, 1, prg_rom_size, file);
  fread(chr_rom, 1, chr_rom_size, file);

  // error handling
  if (ferror(file) != 0) { // get error flag
    fprintf(stderr, "Error reading file\n");
    exit(1);
  }

  cartridge *cart = init_cartridge_struct(prg_rom_size, chr_rom_size);

  cart->headers = header_info;
  cart->PRG_ROM = prg_rom;
  cart->CHR_ROM = chr_rom;
  cart->mapper = header_info->flags[0];
  cart->mirror = header_info->prg_rom_bytes;

  // free memory
  // free header in disassembler
  // free cart in disassembler
  fclose(file);

  printf("Successfully parsed and allocated memory.\n");

  return cart;
}

header *init_header_struct(void) {
  header *tmp_head = (header *)malloc(sizeof(header));

  tmp_head->file_type = (char *)malloc(4);
  tmp_head->flags = (uint8_t *)malloc(5);
  tmp_head->buffer = (uint8_t *)malloc(5);

  if (!tmp_head->file_type || !tmp_head->flags) {
    fprintf(stderr, "Memory allocation failed\n");
    exit(1);
  }

  return tmp_head;
}

cartridge *init_cartridge_struct(int prg_rom_sz, int chr_rom_sz) {
  cartridge *tmp_cart = (cartridge *)malloc(sizeof(cartridge));

  tmp_cart->headers = init_header_struct();
  tmp_cart->PRG_ROM = (char *)malloc(prg_rom_sz);
  tmp_cart->CHR_ROM = (char *)malloc(chr_rom_sz);

  if (!tmp_cart->headers || !tmp_cart->PRG_ROM || !tmp_cart->CHR_ROM) {
    fprintf(stderr, "Memory allocation failed\n");
    exit(1);
  }

  return tmp_cart;
}

void close_header(header *header_struct) {
  free(header_struct->file_type);
  free(header_struct->flags);
  free(header_struct);
}

void close_cartridge(cartridge *cart_struct) {
  close_header(cart_struct->headers);
  free(cart_struct->PRG_ROM);
  free(cart_struct->CHR_ROM);
  free(cart_struct);
}

void read_header(header *header_struct, FILE *f) {
  // params: buffer, size elements, num of elements, file
  fread(header_struct->file_type, 1, 4, f); // file type

  // rom sizes
  fread(&header_struct->prg_rom_bytes, 1, 1, f);
  fread(&header_struct->chr_rom_bytes, 1, 1, f);

  // flags
  uint8_t *tmp = header_struct->flags;
  for (int i = 0; i < 5; i++) {
    fread(tmp + i, 1, 1, f);
  }

  // buffer
  fread(header_struct->buffer, 1, 5, f);

  // error handling
  if (ferror(f) != 0) { // check error flag
    fprintf(stderr, "Error reading file\n");
    exit(1);
  }
}

void init_crc32_table(void) {
  for (int i = 0; i < 256; i++) {
    uint32_t crc = i;
    for (int j = 0; j < 8; j++) {
      if (crc & 1) {
        crc = (crc >> 1) ^ CRC32_POLYNOMIAL;
      } else {
        crc >>= 1;
      }
    }
    crc32_table[i] = crc;
  }
}

uint32_t calculate_crc32(char *data, size_t length) {
  uint32_t crc = 0xFFFFFFFF; // Initial CRC value

  // calc crc for file
  for (size_t i = 0; i < length; i++) {
    crc = (crc >> 8) ^ crc32_table[(crc & 0xFF) ^ (unsigned char)data[i]];
  }

  return ~crc; // Final XOR with 0xFFFFFFFF
}

int validate_file(char *file_path) {
  // calc my crc32
  init_crc32_table();
  FILE *tmp = fopen(file_path, "rb");

  // get file size
  fseek(tmp, 0, SEEK_END);
  long file_size = ftell(tmp);
  fseek(tmp, 0, SEEK_SET);

  char *tmp_buf = (char *)malloc(file_size * sizeof(char));

  // get file data
  fread(tmp_buf, 1, file_size, tmp);
  fseek(tmp, 0, SEEK_SET); // reset file pointer
  
  fclose(tmp);
  free(tmp_buf);

  // get my crc32 value
  uint32_t crc32_val = calculate_crc32(tmp_buf, file_size);


  // calc expected crc32 
  FILE *cmd_fp;
  char command[50];
  uint32_t expected_crc32 = 0;

  // allow command to be dynamic
  sprintf(command, "crc32 %s", file_path);

  // exec and get output of command
  cmd_fp = popen(command, "r");
  if (cmd_fp == NULL) {
    fprintf(stderr, "Failed to run crc32 command\n");
    exit(1);
  }

  // convert output to uint32_t
  char crc_output[20];
  if (fgets(crc_output, sizeof(crc_output), cmd_fp) != NULL) {
    sscanf(crc_output, "%x", &expected_crc32);
  }
  
  pclose(cmd_fp);

  return crc32_val == expected_crc32;
}

#endif // PARSE_C
