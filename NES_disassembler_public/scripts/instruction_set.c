#ifndef INS_C
#define INS_C

#include "instruction_set.h"

const opcode_entry cpu_opcodes[256] = {
    // address = {command, comment of cmd, cmd mode, # of Bytes}
    [0x00] = {"BRK", "Force Break", IMPLIED, 1},
    [0x01] = {"ORA", "OR Memory with Accumulator", INDEXED_INDIRECT, 3},
    [0x05] = {"ORA", "OR Memory with Accumulator", ZEROPAGE, 2},
    [0x06] = {"ASL", "Shift Left One Bit", ZEROPAGE, 2},
    [0x08] = {"PHP", "Push Processor Status on Stack", IMPLIED, 1},
    [0x09] = {"ORA", "OR Memory with Accumulator", IMMEDIATE, 2},
    [0x0A] = {"ASL A", "Shift Left One Bit", ACCUMULATOR, 1},
    [0x0D] = {"ORA", "OR Memory with Accumulator", ABSOLUTE, 3},
    [0x0E] = {"ASL", "Shift Left One Bit", ABSOLUTE, 3},

    [0x10] = {"BPL", "Branch on Result Plus", RELATIVE, 2},
    [0x11] = {"ORA", "OR Memory with Accumulator", INDIRECT_INDEXED, 3},
    [0x15] = {"ORA", "OR Memory with Accumulator", ZEROPAGE_X, 2},
    [0x16] = {"ASL", "Shift Left One Bit", ZEROPAGE_X, 2},
    [0x18] = {"CLC", "Clear Carry Flag", IMPLIED, 1},
    [0x19] = {"ORA", "OR Memory with Accumulator", ABSOLUTE_Y, 3},
    [0x1D] = {"ORA", "OR Memory with Accumulator", ABSOLUTE_X, 3},
    [0x1E] = {"ASL", "Shift Left One Bit", ABSOLUTE_X, 3},

    [0x20] = {"JSR", "Jump to New Location Saving Return Address", ABSOLUTE, 3},
    [0x21] = {"AND", "AND Memory with Accumulator", INDEXED_INDIRECT, 3},
    [0x24] = {"BIT", "Test Bits in Memory with Accumulator", ZEROPAGE, 2},
    [0x25] = {"AND", "AND Memory with Accumulator", ZEROPAGE, 2},
    [0x26] = {"ROL", "Rotate One Bit Left", ZEROPAGE, 2},
    [0x28] = {"PLP", "Pull Processor Status from Stack", IMPLIED, 1},
    [0x29] = {"CLC", "Clear Carry Flag", IMMEDIATE, 2},
    [0x2A] = {"ROL A", "Rotate One Bit Left", ACCUMULATOR, 1},
    [0x2C] = {"BIT", "Test Bits in Memory with Accumulator", ABSOLUTE, 3},
    [0x2D] = {"AND", "AND Memory with Accumulator", ABSOLUTE, 3},
    [0x2E] = {"ROL", "Rotate One Bit Left", ABSOLUTE, 3},

    [0x30] = {"BMI", "Branch on Result Minus", RELATIVE, 2},
    [0x31] = {"AND", "AND Memory with Accumulator", INDIRECT_INDEXED, 3},
    [0x35] = {"AND", "AND Memory with Accumulator", ZEROPAGE_X, 2},
    [0x36] = {"ROL", "Rotate One Bit Left", ZEROPAGE_X, 2},
    [0x38] = {"SEC", "Set Carry Flag", IMPLIED, 1},
    [0x39] = {"AND", "AND Memory with Accumulator", ABSOLUTE_Y, 3},
    [0x3D] = {"AND", "AND Memory with Accumulator", ABSOLUTE_X, 3},
    [0x3E] = {"ROL", "Rotate One Bit Left", ABSOLUTE_X, 3},

    [0x40] = {"RTI", "Return from Interrupt", IMPLIED, 1},
    [0x41] = {"EOR", "Exclusive-OR Memory with Accumulator", INDEXED_INDIRECT, 3},
    [0x45] = {"EOR", "Exclusive-OR Memory with Accumulator", ZEROPAGE, 2},
    [0x46] = {"LSR", "Shift One Bit Right (Memory or Accumulator)", ZEROPAGE, 2},
    [0x48] = {"PHA", "Push Accumulator on Stack", IMPLIED, 1},
    [0x49] = {"EOR", "Exclusive-OR Memory with Accumulator", IMMEDIATE, 2},
    [0x4A] = {"LSR A", "Shift One Bit Right (Memory or Accumulator)", ACCUMULATOR, 2},
    [0x4C] = {"JMP", "Jump to New Location", ABSOLUTE, 3},
    [0x4D] = {"EOR", "Exclusive-OR Memory with Accumulator", ABSOLUTE, 3},
    [0x4E] = {"LSR", "Shift One Bit Right (Memory or Accumulator)", ABSOLUTE, 3},

    [0x50] = {"BVC", "Branch on Overflow Clear", RELATIVE, 2},
    [0x51] = {"EOR", "Exclusive-OR Memory with Accumulator", INDIRECT_INDEXED, 3},
    [0x55] = {"EOR", "Exclusive-OR Memory with Accumulator", ZEROPAGE_X, 2},
    [0x56] = {"LSR", "Shift One Bit Right (Memory or Accumulator)", ZEROPAGE_X, 2},
    [0x58] = {"CLI", "Clear Interrupt Disable Bit", IMPLIED, 1},
    [0x59] = {"EOR", "Exclusive-OR Memory with Accumulator", ABSOLUTE_Y, 3},
    [0x5D] = {"EOR", "Exclusive-OR Memory with Accumulator", ABSOLUTE_X, 3},
    [0x5E] = {"LSR", "Shift One Bit Right (Memory or Accumulator)", ABSOLUTE_X, 3},

    [0x60] = {"RTS", "Return from Subroutine", IMPLIED, 1},
    [0x61] = {"ADC", "Add Memory to Accumulator with Carry", INDEXED_INDIRECT, 3},
    [0x65] = {"ADC", "Add Memory to Accumulator with Carry", ZEROPAGE, 2},
    [0x66] = {"ROR", "Rotate One Bit Right", ZEROPAGE, 2},
    [0x68] = {"PLA", "Pull Accumulator from Stack", IMPLIED, 1},
    [0x69] = {"ADC", "Add Memory to Accumulator with Carry", IMMEDIATE, 2},
    [0x6A] = {"ROR A", "Rotate One Bit Right", ACCUMULATOR, 1},
    [0x6C] = {"JMP", "Jump to New Location", INDIRECT, 3},
    [0x6D] = {"ADC", "Add Memory to Accumulator with Carry", ABSOLUTE, 3},
    [0x6E] = {"ROR", "Rotate One Bit Right", ABSOLUTE, 3},

    [0x70] = {"BVS", "Branch on Overflow Set", RELATIVE, 2},
    [0x71] = {"ADC", "Add Memory to Accumulator with Carry", INDIRECT_INDEXED, 3},
    [0x75] = {"ADC", "Add Memory to Accumulator with Carry", ZEROPAGE_X, 2},
    [0x76] = {"ROR", "Rotate One Bit Right", ZEROPAGE_X, 2},
    [0x78] = {"SEI", "Set Interrupt Disable Status", IMPLIED, 1},
    [0x79] = {"ADC", "Add Memory to Accumulator with Carry", ABSOLUTE_Y, 3},
    [0x7D] = {"ADC", "Add Memory to Accumulator with Carry", ABSOLUTE_X, 3},
    [0x7E] = {"ROR", "Rotate One Bit Right", ABSOLUTE_X, 3},

    [0x81] = {"STA", "Store Accumulator in Memory", INDEXED_INDIRECT, 3},
    [0x84] = {"STY", "Sore Index Y in Memory", ZEROPAGE, 2},
    [0x85] = {"STA", "Store Accumulator in Memory", ZEROPAGE, 2},
    [0x86] = {"STX", "Store Index X in Memory", ZEROPAGE, 2},
    [0x88] = {"DEY", "Decrement Index Y by One", IMPLIED, 1},
    [0x8A] = {"TXA", "Transfer Index X to Accumulator", IMPLIED, 1},
    [0x8C] = {"STY", "Sore Index Y in Memory", ABSOLUTE, 3},
    [0x8D] = {"STA", "Store Accumulator in Memory", ABSOLUTE, 3},
    [0x8E] = {"STX", "Store Index X in Memory", ABSOLUTE, 3},

    [0x90] = {"BCC", "Branch on Carry Clear", RELATIVE, 2},
    [0x91] = {"STA", "Store Accumulator in Memory", INDIRECT_INDEXED, 3},
    [0x94] = {"STY", "Sore Index Y in Memory", ZEROPAGE_X, 2},
    [0x95] = {"STA", "Store Accumulator in Memory", ZEROPAGE_X, 2},
    [0x96] = {"STX", "Store Index X in Memory", ZEROPAGE_Y, 2},
    [0x98] = {"TYA", "Transfer Index Y to Accumulator", IMPLIED, 1},
    [0x99] = {"STA", "Store Accumulator in Memory", ABSOLUTE_Y, 3},
    [0x9A] = {"TXS", "Transfer Index X to Stack Register", IMPLIED, 1},
    [0x9D] = {"STA", "Store Accumulator in Memory", ABSOLUTE_X, 3},

    [0xA0] = {"LDY", "Load Index Y with Memory", IMMEDIATE, 2},
    [0xA1] = {"LDA", "Load Accumulator with Memory", INDEXED_INDIRECT, 3},
    [0xA2] = {"LDX", "Load Index X with Memory", IMMEDIATE, 2},
    [0xA4] = {"LDY", "Load Index Y with Memory", ZEROPAGE, 2},
    [0xA5] = {"LDA", "Load Accumulator with Memory", ZEROPAGE, 2},
    [0xA6] = {"LDX", "Load Index X with Memory", ZEROPAGE, 2},
    [0xA8] = {"TAY", "Transfer Accumulator to Index Y", IMPLIED, 1},
    [0xA9] = {"LDA", "Load Accumulator with Memory", IMMEDIATE, 2},
    [0xAA] = {"TAX", "Transfer Accumulator to Index X", IMPLIED, 1},
    [0xAC] = {"LDY", "Load Index Y with Memory", ABSOLUTE, 3},
    [0xAD] = {"LDA", "Load Accumulator with Memory", ABSOLUTE, 3},
    [0xAE] = {"LDX", "Load Index X with Memory", ABSOLUTE, 3},

    [0xB0] = {"BCS", "Branch on Carry Set", RELATIVE, 2},
    [0xB1] = {"LDA", "Load Accumulator with Memory", INDIRECT_INDEXED, 3},
    [0xB4] = {"LDY", "Load Index Y with Memory", ZEROPAGE_X, 3},
    [0xB5] = {"LDA", "Load Accumulator with Memory", ZEROPAGE_X, 3},
    [0xB6] = {"LDX", "Load Index X with Memory", INDIRECT_INDEXED, 3},
    [0xB8] = {"CLV", "Clear Overflow Flag", IMPLIED, 1},
    [0xB9] = {"LDA", "Load Accumulator with Memory", ABSOLUTE_Y, 3},
    [0xBA] = {"TSX", "Transfer Stack Pointer to Index X", IMPLIED, 1},
    [0xBC] = {"LDY", "Load Index Y with Memory", ABSOLUTE_X, 3},
    [0xBD] = {"LDA", "Load Accumulator with Memory", ABSOLUTE_X, 3},
    [0xBE] = {"LDX", "Load Index X with Memory", ABSOLUTE_Y, 3},

    [0xC0] = {"CPY", "Compare Memory and Index Y", IMMEDIATE, 2},
    [0xC1] = {"CMP", "Compare Memory with Accumulator", INDEXED_INDIRECT, 3},
    [0xC4] = {"CPY", "Compare Memory and Index Y", ZEROPAGE, 2},
    [0xC5] = {"CMP", "Compare Memory with Accumulator", ZEROPAGE, 2},
    [0xC6] = {"DEC", "Decrement Memory by One", ZEROPAGE, 2},
    [0xC8] = {"INY", "Increment Index Y by One", IMPLIED, 1},
    [0xC9] = {"CMP", "Compare Memory with Accumulator", IMMEDIATE, 2},
    [0xCA] = {"DEX", "Decrement Index X by One", IMPLIED, 1},
    [0xCC] = {"CPY", "Compare Memory and Index Y", ABSOLUTE, 3},
    [0xCD] = {"CMP", "Compare Memory with Accumulator", ABSOLUTE, 3},
    [0xCE] = {"DEC", "Decrement Memory by One", ABSOLUTE, 3},

    [0xD0] = {"BNE", "Branch on Result not Zero", RELATIVE, 2},
    [0xD1] = {"CMP", "Compare Memory with Accumulator", INDIRECT_INDEXED, 3},
    [0xD5] = {"CMP", "Compare Memory with Accumulator", ZEROPAGE_X, 2},
    [0xD6] = {"DEC", "Decrement Memory by One", ZEROPAGE_X, 2},
    [0xD8] = {"CLD", "Clear Decimal Mode", IMPLIED, 1},
    [0xD9] = {"CMP", "Compare Memory with Accumulator", ABSOLUTE_Y, 3},
    [0xDD] = {"CMP", "Compare Memory with Accumulator", ABSOLUTE_X, 3},
    [0xDE] = {"DEC", "Decrement Memory by One", ABSOLUTE_X, 3},

    [0xE0] = {"CPX", "Compare Memory and Index Y", IMMEDIATE, 2},
    [0xE1] = {"SBC", "Subtract Memory from Accumulator with Borrow", INDEXED_INDIRECT, 3},
    [0xE4] = {"CPX", "Compare Memory and Index Y", ZEROPAGE, 2},
    [0xE5] = {"SBC", "Subtract Memory from Accumulator with Borrow", ZEROPAGE, 2},
    [0xE6] = {"INC", "Increment Memory by One", ZEROPAGE, 2},
    [0xE8] = {"INX", "Increment Index X by One", IMPLIED, 1},
    [0xE9] = {"SBC", "Subtract Memory from Accumulator with Borrow", IMMEDIATE, 2},
    [0xEA] = {"NOP", "No Operation", IMPLIED, 1},
    [0xEC] = {"CPX", "Compare Memory and Index X", ABSOLUTE, 3},
    [0xED] = {"SBC", "Subtract Memory from Accumulator with Borrow", ABSOLUTE, 3},
    [0xEE] = {"INC", "Increment Memory by One", ABSOLUTE, 3},

    [0xF0] = {"BEQ", "Branch on Result Zero", RELATIVE, 2},
    [0xF1] = {"SBC", "Subtract Memory from Accumulator with Borrow", INDIRECT_INDEXED, 3},
    [0xF5] = {"SBC", "Subtract Memory from Accumulator with Borrow", ZEROPAGE_X, 2},
    [0xF6] = {"INC", "Increment Memory by One", ZEROPAGE_X, 2},
    [0xF8] = {"SED", "Set Decimal Flag", IMPLIED, 1},
    [0xF9] = {"SBC", "Subtract Memory from Accumulator with Borrow", ABSOLUTE_Y, 3},
    [0xFD] = {"SBC", "Subtract Memory from Accumulator with Borrow", ABSOLUTE_X, 3},
    [0xFE] = {"INC", "Increment Memory by One", ABSOLUTE_X, 3},
};

char *get_opcode_str(opcode_entry opcode, cartridge *cart, read_func r_mem, uint32_t addr) {
    // shoudn't be more than 14 chars, buffer just in case
    char *str = (char *)malloc(sizeof(char)); 

    switch (opcode.mode) {
    case RELATIVE: {
        // OPC $BB
        sprintf(str, "%s $%02X", opcode.mnemonic, r_mem(cart, (uint16_t)addr + 1));
        return str;
    }
    case IMMEDIATE: {
        // OPC #$BB
        sprintf(str, "%s #$%02X", opcode.mnemonic, r_mem(cart, (uint16_t)addr + 1));
        return str;
    }
    case ZEROPAGE: {
        // OPC $LL
        sprintf(str, "%s $%02X", opcode.mnemonic, r_mem(cart, (uint16_t)addr + 1));
        return str;
    }
    case ZEROPAGE_X: {
        // OPC $LL,X
        sprintf(str, "%s $%02X,X", opcode.mnemonic, r_mem(cart, (uint16_t)addr + 1));
        return str;
    }
    case ZEROPAGE_Y: {
        // OPC $LL,Y
        sprintf(str, "%s $%02X,Y", opcode.mnemonic, r_mem(cart, (uint16_t)addr + 1));
        return str;
    }
    case ABSOLUTE: {
        // OPC $LLHH
        sprintf(str, "%s $%02X%02X", opcode.mnemonic, r_mem(cart, (uint16_t)addr + 2), r_mem(cart, (uint16_t)addr + 1));
        return str;
    }
    case ABSOLUTE_X: {
        // OPC $LLHH,X
        sprintf(str, "%s $%02X%02X,X", opcode.mnemonic, r_mem(cart, (uint16_t)addr + 2), r_mem(cart, (uint16_t)addr + 1));
        return str;
    }
    case ABSOLUTE_Y: {
        // OPC $LLHH,Y
        sprintf(str, "%s $%02X%02X,Y", opcode.mnemonic, r_mem(cart, (uint16_t)addr + 2), r_mem(cart, (uint16_t)addr + 1));
        return str;
    }
    case INDIRECT: {
        // OPC ($LLHH)
        sprintf(str, "%s ($%02X%02X)", opcode.mnemonic, r_mem(cart, (uint16_t)addr + 2), r_mem(cart, (uint16_t)addr + 1));
        return str;
    }
    case INDEXED_INDIRECT: {
        // OPC ($LL,X)
        sprintf(str, "%s ($%02X,X)", opcode.mnemonic, r_mem(cart, (uint16_t)addr + 1));
        return str;
    }
    case INDIRECT_INDEXED: {
        // OPC ($LL),Y
        sprintf(str, "%s ($%02X),Y", opcode.mnemonic, r_mem(cart, (uint16_t)addr + 1));
        return str;
    }
    // IMPLIED & ACCUMULATOR
    default: {
        sprintf(str, "%s", opcode.mnemonic);
        return str;
    }
    }
}

#endif // INS_C
