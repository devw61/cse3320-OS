#ifndef MAPPERS_C
#define MAPPERS_C
#include "mappers.h"


mapper_type *get_mapper(uint8_t mapper_num){
    switch (mapper_num) {
        case 1: {
        }
        // Default: NROM
        default: {
            mapper_type *nrom = (mapper_type *)malloc(sizeof(mapper_type));
            nrom->w_cpu = NULL; // NROM has no CPU write functionality
            nrom->w_ppu = nrom_write_ppu_func;
            nrom->r_ppu = nrom_read_ppu_func;
            nrom->r_cpu = nrom_read_cpu_func;
            
            return nrom;
        }
    }
}

// ASSUMPTIONS:
//  - addr from .nes thinks it only has 0x8000 - 0xFFFF
//  - cart pointer for prg-rom and chr-rom starts at 0x0000

uint8_t nrom_read_cpu_func(cartridge *cart, uint16_t addr) {
    if (addr >= 0x8000 && addr <= 0xFFFF) {
        uint32_t prg_address = addr - 0x8000;
        if (cart->mirror == 1) {
          prg_address &= 0x3FFF; // Mask to handle 16KB mirroring
        }
        return cart->PRG_ROM[prg_address];
    }

    // return nother if outside cpu memory space
    return 0;
}

uint8_t nrom_read_ppu_func(cartridge *cart, uint16_t addr){
    if (addr < 0x2000) {
        return cart->CHR_ROM[addr];
    }
    return 0;
}

void nrom_write_ppu_func(cartridge *cart, uint16_t addr, uint8_t val) {
    if (addr < 0x2000 && cart->headers->chr_rom_bytes == 0) {
        cart->CHR_ROM[addr] = val;
    }
}


#endif // MAPPERS_C
