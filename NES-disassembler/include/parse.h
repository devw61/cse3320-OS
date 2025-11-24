#ifndef PARSE_H
#define PARSE_H

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

// structs
typedef struct {
    char *file_type;                        // 3 chars + MS-DOS EOF
    uint8_t prg_rom_bytes,                 // rom bytes
        chr_rom_bytes;
    uint8_t *flags,                         // flags for mapper and others
            *buffer;                      // buffer between header and prg-rom
} header ;

typedef struct {
    header *headers ;
    char *PRG_ROM, *CHR_ROM;
    int8_t mapper, mirror;
} cartridge ;

// CRC32 polynomial (IEEE 802.3)
#define CRC32_POLYNOMIAL 0xEDB88320UL // Reversed polynomial

//prototypes
void read_header(header *header_struct, FILE *f);

header *init_header_struct(void);
cartridge *init_cartridge_struct(int prg_rom_sz, int chr_rom_sz);
void close_header(header *header_struct);
void close_cartridge(cartridge *cart_struct);

void init_crc32_table(void);
int validate_file(char *file_path);
uint32_t calculate_crc32(char *data, size_t length);

cartridge *run_parse(char *filename);

// globals
static uint32_t crc32_table[256]; 
int prg_rom_size;
int chr_rom_size;

#endif /* PARSE_H */
