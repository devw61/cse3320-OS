#ifndef MAPPERS_H
#define MAPPERS_H

#include "parse.h"

// function-pointer types for mapper callbacks
typedef void (*write_cpu)(cartridge *, uint16_t, uint8_t);
typedef void (*write_ppu)(cartridge *, uint16_t, uint8_t);
typedef uint8_t (*read_cpu)(cartridge *, uint16_t);
typedef uint8_t (*read_ppu)(cartridge *, uint16_t);

typedef struct {
    read_cpu r_cpu;
    read_ppu r_ppu;
    write_ppu w_ppu;
    write_cpu w_cpu;
} mapper_type ;

// prototypes
uint8_t nrom_read_cpu_func(cartridge *cart, uint16_t addr);
uint8_t nrom_read_ppu_func(cartridge *cart, uint16_t addr);
void nrom_write_ppu_func(cartridge *cart, uint16_t addr, uint8_t val);
void nrom_write_cpu_func(cartridge *cart, uint16_t addr, uint8_t val);

mapper_type *get_mapper(uint8_t mapper_num);

#endif /* MAPPERS_H */
