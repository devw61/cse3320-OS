#ifndef INS_H
#define INS_H

#include "parse.h"
#include "mappers.h"

typedef enum {
  ACCUMULATOR,      // A
  RELATIVE,         // $BB
  IMPLIED,          // (nothing)
  IMMEDIATE,        // #$BB
  ZEROPAGE,         // $LL
  ZEROPAGE_X,       // $LL,X
  ZEROPAGE_Y,       // $LL,Y
  ABSOLUTE,         // $LLHH
  ABSOLUTE_X,       // $LLHH,X
  ABSOLUTE_Y,       // $LLHH,Y
  INDIRECT,         // ($LLHH)
  INDEXED_INDIRECT, // ($LL,X)
  INDIRECT_INDEXED  // ($LL),Y
} addr_mode_t;

// structs
typedef uint8_t (*read_func)(cartridge *, uint16_t);

typedef struct {
  const char *mnemonic, *comment;
  addr_mode_t mode;
  uint8_t size;
} opcode_entry;

extern const opcode_entry cpu_opcodes[256];

char *get_opcode_str(opcode_entry opcode, cartridge *cart, read_func r_mem, uint32_t addr);

#endif // INS_H
