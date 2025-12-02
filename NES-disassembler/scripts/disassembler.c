#include "instruction_set.h"
#include "mappers.h"
#include "nes_shell.h"
#include "parse.h"
#include "call_graph.h"

#include <errno.h>
#include <jpeglib.h>
#include <sys/stat.h>

char *parse_arg_filename(char *file_path);
void create_dir(char *dir, char *filename);
char *insert_substr(char *str, char *substr, int idx);

void create_prg_file(FILE *f_ptr, uint32_t addr, uint32_t end, cartridge *cart,
                     mapper_type *mapper, char *filename, output_type o_type);
void make_link(opcode_entry entry, cartridge *cart, mapper_type *mapper,
               uint16_t addr, uint8_t opcode, FILE *f_ptr, char *p_anchor);

void create_tiles(char *argv[], cartridge *cart, mapper_type *mapper,
                  size_t chr_size);
void write_tile_jpeg(uint8_t tile[8][8][3], const char *filename, int scale);


int main(int argc, char *argv[]) {
  assert(argc == 2);

  cartridge *cart = run_parse(argv[1]);           // parse .nes file
  mapper_type *mapper = get_mapper(cart->mapper); // get mapper

  // get PRG & CHR size in bytes
  uint32_t prg_units = cart->headers->prg_rom_bytes;
  size_t prg_size = (size_t)prg_units * 16 * 1024; // # of chunks * 16kb

  uint32_t chr_units = cart->headers->chr_rom_bytes;
  size_t chr_size = (size_t)chr_units * 8 * 1024; // # of chunks * 8kb

  // run shell to get ouput format for prg rom
  output_type o_type =
      run_nes_shell(cart, mapper, 0x8000 + prg_size - 1, chr_size - 1);

  // disassemble PRG ROM - start 0x8000 - export to ROMs/<filename>_prg_rom
  char *filename = (char *)malloc(100);
  char *dir = "output_files";

  create_dir(dir, parse_arg_filename(argv[1]));

  // Ouput PRG ROM in assembly
  FILE *prg_f;
  uint32_t addr = 0x8000;
  uint32_t prg_end = 0x8000 + prg_size - 1;

  if (o_type != HTML) {
    sprintf(filename, "%s/%s_prg.asm", dir, parse_arg_filename(argv[1]));
  } else {
    sprintf(filename, "%s/%s_prg.html", dir, parse_arg_filename(argv[1]));
  }

  prg_f = fopen(filename, "w");

  create_prg_file(prg_f, addr, prg_end, cart, mapper,
                  parse_arg_filename(argv[1]), o_type);

  fclose(prg_f);
  printf("Disassembled PRG ROM Data to %s\n", filename);

  // Output CHR ROM tiles
  uint32_t chr_end = chr_size - 1;

  create_tiles(argv, cart, mapper, chr_end);

  printf("Disassembled CHR ROM Data to output_files/tiles_%s/\n",
         parse_arg_filename(argv[1]));

  close_cartridge(cart);

  return 0;
}

void write_tile_jpeg(uint8_t tile[8][8][3], const char *filename, int scale) {
  // Scale up the 8x8 tile for visibility (e.g., scale=16 makes it 128x128)
  int width = 8 * scale;
  int height = 8 * scale;

  // Allocate row buffer
  unsigned char *image = (unsigned char *)malloc(width * height * 3);

  // Scale up the 8x8 tile
  for (int y = 0; y < 8; y++) {
    for (int x = 0; x < 8; x++) {
      for (int sy = 0; sy < scale; sy++) {
        for (int sx = 0; sx < scale; sx++) {
          int px = x * scale + sx;
          int py = y * scale + sy;
          int idx = (py * width + px) * 3;

          image[idx + 0] = tile[y][x][0]; // R
          image[idx + 1] = tile[y][x][1]; // G
          image[idx + 2] = tile[y][x][2]; // B
        }
      }
    }
  }

  // Setup JPEG compression
  struct jpeg_compress_struct cinfo;
  struct jpeg_error_mgr jerr;
  FILE *outfile;

  cinfo.err = jpeg_std_error(&jerr);
  jpeg_create_compress(&cinfo);

  if ((outfile = fopen(filename, "wb")) == NULL) {
    fprintf(stderr, "Can't open %s\n", filename);
    free(image);
    return;
  }

  jpeg_stdio_dest(&cinfo, outfile);

  cinfo.image_width = width;
  cinfo.image_height = height;
  cinfo.input_components = 3;
  cinfo.in_color_space = JCS_RGB;

  jpeg_set_defaults(&cinfo);
  jpeg_set_quality(&cinfo, 100, TRUE); // Max quality

  jpeg_start_compress(&cinfo, TRUE);

  // Write scanlines
  JSAMPROW row_pointer[1];
  while (cinfo.next_scanline < cinfo.image_height) {
    row_pointer[0] = &image[cinfo.next_scanline * width * 3];
    jpeg_write_scanlines(&cinfo, row_pointer, 1);
  }

  jpeg_finish_compress(&cinfo);
  fclose(outfile);
  jpeg_destroy_compress(&cinfo);
  free(image);
}

void create_tiles(char *argv[], cartridge *cart, mapper_type *mapper,
                  size_t chr_end) {
  int row = 0;
  int file_num = 0;
  uint8_t tile[8][8][3];
  uint32_t chr_addr = 0x0000;

  uint8_t palette[4][3] = {
      {255, 255, 255}, // white
      {192, 192, 192}, // light gray
      {96, 96, 96},    // dark gray
      {0, 0, 0}        // black
  };

  while (chr_addr <= chr_end) {
    uint8_t low_bits = mapper->r_ppu(cart, (uint16_t)chr_addr);
    uint8_t high_bits = mapper->r_ppu(cart, (uint16_t)(chr_addr + 1));

    for (int i = 0; i < 8; i++) {
      uint8_t low_bit = (low_bits >> (7 - i)) & 1;
      uint8_t high_bit = (high_bits >> (7 - i)) & 1;

      memcpy(tile[row][i], palette[(high_bit << 1) | low_bit], 3);
    }

    if (row != 7) {
      row++;
    } else {
      char tile_filename[100];
      char dir_name[100];

      sprintf(dir_name, "output_files/tiles_%s", parse_arg_filename(argv[1]));
      create_dir(dir_name, NULL);

      sprintf(tile_filename, "%s/tile_%04d.jpg", dir_name, file_num++);
      write_tile_jpeg(tile, tile_filename, 16);

      row = 0;
    }

    chr_addr += 2;
  }
}

void create_prg_file(FILE *f_ptr, uint32_t addr, uint32_t end, cartridge *cart,
                     mapper_type *mapper, char *filename, output_type o_type) {
  // meta data of file
  if (o_type == HTML) {
    char *html_header =
        "<!DOCTYPE html>\n<html lang='en'>\n<head>\n\t<meta "
        "charset='UTF-8'>\n\t<meta name='viewport' "
        "content='width=device-width, "
        "initial-scale=1.0'>\n\t<title>prg_rom</title>\n</head>\n<style>\np "
        "{\n\tmargin-top : 0;margin-bottom : 0;\n}\n</style>\n<body>\n ";
    fprintf(f_ptr, "%s", html_header);
    fprintf(f_ptr,
            "\t<p>\n\t\t; %s (Disassembled)<br>\t\t; Address: "
            "$%04X-$%04X\n<br>\t\t.org "
            "$%04X\n<br>\t\tRESET:\t\t\t\t\t; $%04x\n\t</p><br>\n",
            filename, addr, end, addr, addr);
  } else {
    fprintf(f_ptr,
            "; %s (Disassembled)\n; Address: $%04X-$%04X\n\n.org "
            "$%04X\n\nRESET:\t\t\t\t\t; $%04x",
            filename, addr, end, addr, addr);
  }

  // contents of prg rom
  while (addr <= end) {
    uint8_t opcode = mapper->r_cpu(cart, (uint16_t)addr);
    opcode_entry entry = cpu_opcodes[opcode];

    // If a valid opcode
    if (entry.mnemonic) {

      // add subroutine to call graph
      if (check_for_jmp(entry.mnemonic)){
        char cg_fname[100];
        sprintf(cg_fname, "%s_call_graph", filename);
        read_subroutine(cart, mapper, get_jmp_address(cart, mapper, addr), end, cg_fname);
      }

      // print address: command
      if (o_type == HTML) {
        char *p_anchor = (char *)malloc(sizeof(char) * 15);
        sprintf(p_anchor, "<p id='%04X'>", addr);

        // add link anchor if JMP or JSR
        if ((strcmp(entry.mnemonic, "JSR") == 0) ||
            (strcmp(entry.mnemonic, "JMP") == 0)) {

          make_link(entry, cart, mapper, (uint16_t)addr, opcode, f_ptr, p_anchor);

          // else isnt a JMP or JSR
        } else {
          // emsp for spacing in html
          fprintf(f_ptr, "\n\t%s&emsp;&emsp;%-20s; $%04X: $%02X ", p_anchor,
                  get_opcode_str(entry, cart, mapper->r_cpu, addr), addr,
                  opcode);
        }

        free(p_anchor);
      } else {
        fprintf(f_ptr, "\n\t%-20s; $%04X: $%02X ",
                get_opcode_str(entry, cart, mapper->r_cpu, addr), addr, opcode);
      }

      // print comments if specified to
      if (o_type != NO_COMMENT) {
        for (int i = 1; i < entry.size; i++) {
          uint8_t val = mapper->r_cpu(cart, (uint16_t)(addr + i));
          fprintf(f_ptr, "$%02X ", val);
        }

        // add comment
        fprintf(f_ptr, "- %s", entry.comment);
        if (o_type == HTML) {
          fprintf(f_ptr, "</p>");
        }
      }

    }

    // update according to size or incrememnt by 1 if not valid opcode
    addr += entry.size ? entry.size : 1;
  }

  if (o_type == HTML) {
    fprintf(f_ptr, "\n</body>\n");
  }
}

void create_dir(char *dir, char *filename) {
  struct stat st;

  // create output_file dir if it doesn't exist
  if (!(stat(dir, &st) == 0 && S_ISDIR(st.st_mode))) {
    mode_t permissions =
        S_IRWXU | S_IRWXG |
        S_IRWXO; // Read, write, execute for user, group, and others

    if (mkdir(dir, permissions) == 0) {
      printf("Directory '%s' created successfully.\n", dir);
    } else {
      if (!(errno == EEXIST)) {
        perror("Failed to create directory");
      }
    }
  }

  // default file in dir
  if (filename != NULL) {
    char file_path[100];
    sprintf(file_path, "%s/%s_call_graph.txt", dir, filename);

    FILE *file = fopen(file_path, "w");
    if (file == NULL) {
      perror("Failed to create file in directory");
    } else {
      fclose(file);
    }
  }
}

char *parse_arg_filename(char *file_path) {
  char *fname = (char *)malloc(200);
  int fname_ptr = 0;
  // start after ROMs/
  for (int i = 5; file_path[i] != '.'; i++, fname_ptr++) {
    fname[fname_ptr] = file_path[i];
  }

  return fname;
}

char *insert_substr(char *str, char *substr, int idx) {
  int str_len = strlen(str);
  int substr_len = strlen(substr);

  char *result = (char *)malloc(str_len + substr_len + 1);

  // copy everything before idx
  strncpy(result, str, idx);

  // insert the substring to insert
  strcpy(result + idx, substr);

  // insert everything after idx from original string
  strcpy(result + idx + substr_len, str + idx);

  return result;
}

void make_link(opcode_entry entry, cartridge *cart, mapper_type *mapper,
               uint16_t addr, uint8_t opcode, FILE *f_ptr, char *p_anchor) {
  char *opcode_str = get_opcode_str(entry, cart, mapper->r_cpu, addr);

  // Find where the address starts (after the mnemonic and space)
  char *addr_start = strchr(opcode_str, '$');

  if (addr_start != NULL) {
    int start_idx = addr_start - opcode_str;
    int end_idx = start_idx + 5; // '$' + 4 hex digits
    char href_tag[30];
    char addr_str[5];

    // Extract the actual address value from the string
    strncpy(addr_str, addr_start + 1, 4);
    addr_str[4] = '\0';

    sprintf(href_tag, "<a href='#%s'>", addr_str);

    // insert tags, closing tag first since at higher index
    char *temp = insert_substr(opcode_str, "</a>", end_idx);
    free(opcode_str);
    opcode_str = insert_substr(temp, href_tag, start_idx);
    free(temp);
  }

  // emsp for spacing in html
  fprintf(f_ptr, "\n\t%s&emsp;&emsp;%-20s; $%04X: $%02X ", p_anchor, opcode_str,
          addr, opcode);

  free(opcode_str);
}
