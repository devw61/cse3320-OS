# NES Disassembler - Design Document

## Table of Contents
1. [Project Overview](#project-overview)
2. [System Architecture](#system-architecture)
3. [Core Components](#core-components)
4. [Data Structures](#data-structures)
5. [Control Flow](#control-flow)
6. [Memory Management](#memory-management)
7. [Advanced Features](#advanced-features)
8. [Design Decisions](#design-decisions)

---

## Project Overview

The NES Disassembler is a command-line tool that parses Nintendo Entertainment System (NES) ROM files in iNES format and converts the binary data into human-readable 6502 assembly code. The project also extracts CHR-ROM graphics data and provides call graph analysis for control flow visualization.

### Key Capabilities
- Parse and validate iNES format ROM files
- Disassemble 6502 CPU instructions from PRG-ROM
- Extract and render CHR-ROM tile graphics as JPEG images
- Generate call graphs for subroutine analysis
- Support multiple output formats (assembly, HTML with hyperlinks)
- Interactive shell for dynamic disassembly

---

## System Architecture

The project follows a modular architecture with clear separation of concerns:

```
┌─────────────────────────────────────────────────────────────┐
│                    Main Entry Point                         │
│                  (disassembler.c)                           │
└──────────────────┬──────────────────────────────────────────┘
                   │
       ┌───────────┴───────────┐
       │                       │
       ▼                       ▼
┌──────────────┐      ┌──────────────────┐
│  ROM Parser  │      │  Interactive     │
│  (parse.c)   │      │  Shell           │
└──────┬───────┘      │  (nes_shell.c)   │
       │              └──────────────────┘
       ▼
┌──────────────────────────────────┐
│     Cartridge Structure          │
│  (headers, PRG-ROM, CHR-ROM)     │
└───────┬──────────────────────────┘
        │
        ├─────────┬──────────┬──────────────┐
        ▼         ▼          ▼              ▼
  ┌─────────┐ ┌────────┐ ┌──────────┐ ┌──────────┐
  │ Mapper  │ │ Opcode │ │   CHR    │ │   Call   │
  │ System  │ │ Engine │ │ Graphics │ │  Graph   │
  │(mappers)│ │(instr.)│ │Extractor │ │ Analyzer │
  └─────────┘ └────────┘ └──────────┘ └──────────┘
```

### Module Responsibilities

| Module | Files | Purpose |
|--------|-------|---------|
| **Parser** | `parse.c/h` | ROM file validation, header parsing, memory allocation |
| **Mapper** | `mappers.c/h` | Memory bank switching, address translation |
| **Instruction Set** | `instruction_set.c/h` | 6502 opcode decoding, addressing mode handling |
| **Shell** | `nes_shell.c/h` | Interactive command interface, user I/O |
| **Call Graph** | `call_graph.c/h` | Control flow analysis, subroutine tracking |
| **Main** | `disassembler.c` | Orchestration, output generation |

---

## Core Components

### 1. ROM Parser (`parse.c/h`)

**Responsibilities:**
- Read and validate iNES format headers
- CRC32 integrity checking
- Extract PRG-ROM and CHR-ROM data
- Handle trainer sections
- Allocate cartridge structures

**Key Functions:**
```c
cartridge *run_parse(char *file_path);
int validate_file(char *file_path);
void read_header(header *header_struct, FILE *f);
```

**iNES Header Structure (16 bytes):**
```
Offset  Size    Description
------  ----    -----------
0       3       "NES" + MS-DOS EOF marker
4       1       PRG-ROM size (in 16KB units)
5       1       CHR-ROM size (in 8KB units)
6       1       Flags 6 (mapper, mirroring, trainer, etc.)
7       1       Flags 7 (mapper, VS Unisystem, PlayChoice-10)
8-15    8       Unused/padding
```

**Design Decisions:**
- Uses `fread()` for binary file operations
- Implements CRC32 validation to ensure file integrity
- Dynamically allocates memory based on ROM sizes
- Handles edge cases (missing CHR-ROM, trainer presence)

---

### 2. Mapper System (`mappers.c/h`)

**Purpose:** Abstract memory access to support different cartridge hardware configurations.

**Architecture:**
```c
typedef struct {
    read_cpu r_cpu;   // Function pointer for CPU memory reads
    read_ppu r_ppu;   // Function pointer for PPU memory reads
    write_cpu w_cpu;  // Function pointer for CPU memory writes
    write_ppu w_ppu;  // Function pointer for PPU memory writes
} mapper_type;
```

**Implemented Mappers:**
- **NROM (Mapper 0):** Simple linear mapping, no bank switching

**Memory Map (NROM):**
```
CPU Address Space:
$8000-$FFFF   PRG-ROM (32KB or mirrored 16KB)

PPU Address Space:
$0000-$1FFF   CHR-ROM/RAM
$2000-$3FFF   Nametables
```

**Design Decisions:**
- Abstraction layer simplifies usage within disassembler 
- Mimics virtual memory address implementation for easier usability 
- Supports future MMC1, MMC3 implementations (not implemented)

---

### 3. Instruction Set Engine (`instruction_set.c/h`)

**Core Data Structure:**
```c
typedef struct {
    const char *mnemonic;    // Instruction name (e.g., "LDA")
    const char *comment;     // Human-readable description
    addr_mode_t mode;        // Manually added addressing mode
    uint8_t size;            // Instruction size in bytes
} opcode_entry;
```

**6502 Addressing Modes:**
| Mode | Example | Description |
|------|---------|-------------|
| Implied | `RTS` | No operands |
| Immediate | `LDA #$44` | Literal value |
| Zero Page | `LDA $44` | First 256 bytes |
| Absolute | `LDA $4400` | Full 16-bit address |
| Indexed | `LDA $4400,X` | Base + register offset |
| Indirect | `JMP ($4400)` | Pointer dereference |

**Opcode Table:**
- 256-entry lookup table indexed by opcode byte
- Pre-computed instruction metadata
- Handles unofficial/illegal opcodes "gracefully"

**String Generation:**
```c
char *get_opcode_str(opcode_entry opcode, cartridge *cart, 
                     read_func r_mem, uint32_t addr);
```
- Dynamically formats instruction strings
- Reads operand bytes from ROM
- Applies addressing mode syntax
- Outputs finalized commands in little-endian

---

### 4. Interactive Shell (`nes_shell.c/h`)

**Purpose:**
- Easy to parse user inputs
- Implementing legacy code
- Easy for user to understand

**Features:**
- Command-line interface for exploration
- Signal handling (SIGINT, SIGTSTP)
- Address range validation
- Output format selection
- Partial disassembly

**Commands:**
| Command | Syntax | Description |
|---------|--------|-------------|
| `dis` | `dis $8000 $8100` | Disassemble address range |
| `form` | `form w/ com` | Set output format |
| `help`/`man` | - | Display manual |
| `quit`/`exit` | - | Exit shell |

**Output Formats:**
- `COMMENT`: Assembly with detailed comments
- `NO_COMMENT`: Minimal assembly output
- `HTML`: Hyperlinked HTML with anchors for jumps

**Signal Handling:**
```c
void catch_signal(void);
static void handle_signal(int sig);
```
- Prevents accidental termination (Ctrl+C)
- Graceful suspension handling (Ctrl+Z)

---

### 5. Call Graph Analyzer (`call_graph.c/h`)

**Purpose:** Track control flow and subroutine relationships.

**Data Structures:**
```c
typedef struct linked_list {
    uint32_t sr_addr;           // Subroutine address
    struct linked_list *next;   // Next node
} linked_list;

typedef struct {
    uint32_t start_addr;
    linked_list *calls_sr;      // List of called subroutines
} subroutine;
```

**Algorithm:**
1. Detect JMP/JSR instructions during disassembly
2. Extract target addresses from operands
3. Build linked list of called addresses
4. Recursively trace subroutines
5. Generate call graph visualization

**Future Optimzation:**
- Reading memory that will, or has been, already read

**Auto-creates output structure:**
```
output_files/
├── <rom_name>_prg.asm
├── <rom_name>_call_graph.txt
└── tiles_<rom_name>/
    ├── tile_0000.jpg
    ├── tile_0001.jpg
    └── ...
```

**Key Functions:**
```c
void read_subroutine(cartridge *cart, mapper_type *mapper, 
                     uint32_t addr, char *f_name);
void add_called_sr(linked_list **head, uint32_t addr);
uint32_t get_jmp_address(cartridge *cart, mapper_type *mapper, 
                         uint32_t addr);
```

**Output Format:**
```
Subroutine at $8000 calls:
    $8050
    $8100
    $8200
```

**Design Notes:**
- Uses double pointers for linked list manipulation
- Handles circular references gracefully
- Tracks subroutine boundaries (RTS detection and Out-of-Bounds Memory addresses)

---

### 6. Graphics Extraction

**CHR-ROM Tile Format:**
- 8×8 pixel tiles
- 2 bits per pixel (4 colors)
- Planar format (bit planes separated)

**Bit Plane Structure:**
```
Byte 0: Low bits of row 0
Byte 1: High bits of row 0
Byte 2: Low bits of row 1
Byte 3: High bits of row 1
...
```

**Extraction Process:**
1. Read pairs of bytes (low/high bit planes)
2. Interleave bits to form 2bpp pixel values
3. Map to grayscale palette
4. Scale tiles for visibility (8×8 → 128×128)
5. Write as JPEG using libjpeg

**Palette:**
```c
uint8_t palette[4][3] = {
    {255, 255, 255},  // Color 0: White
    {192, 192, 192},  // Color 1: Light gray
    {96, 96, 96},     // Color 2: Dark gray
    {0, 0, 0}         // Color 3: Black
};
```

---

## Data Structures

### Cartridge Structure
```c
typedef struct {
    header *headers;      // iNES header information
    char *PRG_ROM;        // Program code
    char *CHR_ROM;        // Graphics data
    int8_t mapper;        // Mapper number
    int8_t mirror;        // Mirroring configuration
} cartridge;
```

### Header Structure
```c
typedef struct {
    char *file_type;           // "NES\x1A"
    uint8_t prg_rom_bytes;     // PRG-ROM size
    uint8_t chr_rom_bytes;     // CHR-ROM size
    uint8_t *flags;            // Mapper/flags
    uint8_t *buffer;           // Reserved bytes
} header;
```

### Memory Hierarchy
```
┌──────────────┐
│  Cartridge   │
└──────┬───────┘
       │
       ├─→ Header (16 bytes)
       ├─→ PRG-ROM (16KB - 512KB)
       └─→ CHR-ROM (8KB - 128KB)
```

---

## Control Flow

### Main Execution Flow

```
1. Parse command-line arguments
   ↓
2. Initialize cartridge (run_parse)
   ↓
3. Validate file integrity (CRC32)
   ↓
4. Read iNES header
   ↓
5. Load PRG-ROM and CHR-ROM
   ↓
6. Initialize mapper system
   ↓
7. Run interactive shell (optional)
   ↓
8. Disassemble PRG-ROM
   │ ├─→ Decode opcodes
   │ ├─→ Format output
   │ └─→ Build call graph
   ↓
9. Extract CHR-ROM tiles
   ↓
10. Write output files
    ↓
11. Clean up memory
```

### Disassembly Loop

```c
while (addr <= end_addr) {
    opcode = mapper->r_cpu(cart, addr);
    entry = cpu_opcodes[opcode];
    
    if (entry.mnemonic) {
        // Valid opcode
        if (is_jump(entry)) {
            analyze_call_graph();
        }
        
        print_instruction(entry, addr);
        addr += entry.mnemonic ? entry.size : 1;
    } 
}
```

## Design Decisions

### Function Pointers for Mappers
**Advantages:**
- Runtime polymorphism without inheritance
- Easy extension to new mapper types
- Clean separation of concerns
- Mimics hardware abstraction layers

**Alternative Considered:**
Switch statements would work but scale poorly with many mappers.

### Linked List for Call Graph
**Pros:**
- Dynamic size (unknown number of calls)
- Easy insertion at end
- Simple traversal for output

**Cons:**
- O(n) insertion time
- No random access

**Alternative:** Hash table for O(1) lookups, but overkill for typical ROM sizes and hard to implement in C.

### Static Opcode Table
**Benefits:**
- Fast O(1) lookup by opcode byte
- Compile-time initialization
- Read-only data in code segment
- No runtime overhead

### Output Format Enum
```c
typedef enum {
    COMMENT,
    NO_COMMENT,
    HTML
} output_type;
```
Type-safe format selection vs. magic numbers or strings.

### CRC32 Validation
**Why:**
- Detects corrupted downloads
- Verifies ROM integrity
- Standard checksum algorithm

**Implementation:** Polynomial-based lookup table for speed.

---

## Error Handling

### Input Validation
- File existence checks
- Header validation ("NES\x1A" marker)
- Address range bounds checking
- CRC32 integrity verification

### Graceful Degradation
- Invalid opcodes: Skip and continue
- Missing CHR-ROM: Use default 8KB
- Corrupted data: Report and exit cleanly

### User Feedback
```c
printf("Validated File Integrity.\n");
printf("Successfully parsed and allocated memory.\n");
printf("Disassembled PRG ROM Data to %s\n", filename);
```

---

## Future Enhancements

### Potential Improvements
1. **Additional Mappers:** MMC1, MMC3, UNROM
2. **Data Section Detection:** Distinguish code from data

---

## Testing Strategy

### Unit Testing Approach
1. **Parser:** Test with various iNES headers
2. **Mapper:** Verify address translation
3. **Opcodes:** Validate all 256 entries
4. **Call Graph:** Test edge cases (recursion, loops)

### Integration Testing
- Test with real NES ROMs:
  - Super Mario Bros. (simple NROM)
  - Mega Man (MMC1 when implemented)
  - Various mappers and sizes

### Validation Methods
- Compare output with known disassemblies
- Verify tile extraction against emulator screenshots
- Check call graph accuracy manually
- Test edge cases (1-instruction ROMs, corrupt files)


