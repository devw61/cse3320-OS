# NES Disassembler - User Manual

## Table of Contents
1. [Installation](#installation)
2. [Quick Start](#quick-start)
3. [Usage](#usage)
4. [Interactive Shell Commands](#interactive-shell-commands)
5. [Output Files](#output-files)
6. [Build System](#build-system)

---

## Installation

### Prerequisites

**Required:**
- GCC compiler
- Make utility
- libjpeg library

**Installation on macOS (Homebrew):**
```bash
brew install jpeg
```

**Installation on Linux (Ubuntu/Debian):**
```bash
sudo apt-get install libjpeg-dev
```

### Building the Project

1. **Clone or download the repository**
2. **Navigate to the project directory:**
   ```bash
   cd NES_disassembler
   ```

3. **Compile the project:**
   ```bash
   make
   ```

---

## Usage

### Command Line

```bash
./ines_disassembler <rom_file>
```

**Arguments:**
- `<rom_file>`: Path to an iNES format ROM file (`.nes`)

```bash
./ines_disassembler ROMs/Indivisible.nes
```

### File Requirements

The ROM file must be in **iNES format** (`.nes` extension) with:
- Valid 16-byte iNES header
- PRG-ROM data (program code)
- Optional CHR-ROM data (graphics)

---

## Interactive Shell Commands

Once the disassembler starts, you'll see the `nes>` prompt. Available commands:

### 1. `dis` - Disassemble Address Range

**Syntax:**
```
dis $<start_address> $<end_address>
```

**Example:**
```
nes> dis $8000 $8100
```

Displays disassembled 6502 assembly code for the specified address range.

**Address Ranges:**
- PRG-ROM: `$8000` - `$FFFF`
- CHR-ROM: `$0000` - `$1FFF`

### 2. `form` - Set Output Format

**Syntax:**
```
form <format_type>
```

**Available formats:**
- `w/ com` - Assembly with detailed comments (default)
- `w/o com` - Assembly without comments
- `html` - HTML format with hyperlinked jumps

**Examples:**
```
nes> form w/ com
Format changed to have comments.

nes> form html
Format changed to html.
```

### 3. `help` or `man` - Display Help

**Syntax:**
```
help
```
or
```
man
```

Shows available commands and their syntax.

### 4. `quit` or `exit` - Exit Shell

**Syntax:**
```
quit
```
or
```
exit
```

Exits the shell and generates all output files.

---

## Output Files

After running the disassembler, files are created in the `output_files/` directory:

### Directory Structure

```
output_files/
├── <rom_name>_prg.asm           # Disassembled PRG-ROM
├── <rom_name>_prg.html          # HTML version (if html format selected)
├── <rom_name>_call_graph.txt    # Subroutine call graph
└── tiles_<rom_name>/            # Extracted CHR-ROM tiles
    ├── tile_0000.jpg
    ├── tile_0001.jpg
    └── ...
```

### Output File Descriptions

**1. PRG-ROM Assembly File (`*_prg.asm` or `*_prg.html`)**
- Human-readable 6502 assembly code
- Includes address labels and hex values
- Optional comments explaining each instruction
- HTML version has clickable jump/branch targets

**Example output:**
```assembly
; mm (Disassembled)
; Address: $8000-$BFFF

.org $8000

RESET:                  ; $8000
    SEI                 ; $8000: $78 - Disable interrupts
    CLD                 ; $8001: $D8 - Clear decimal mode
    LDX #$40            ; $8002: $A2 $40 - Load X with $40
```

**2. Call Graph (`*_call_graph.txt`)**
- Lists subroutines and their call relationships
- Helps understand program flow

**Example:**
```
Subroutine at $8000 calls:
    $8050
    $8100

Subroutine at $8050 calls:
    $8200
```

**3. Tile Images (`tiles_*/tile_*.jpg`)**
- Individual 8×8 pixel tiles extracted from CHR-ROM
- Scaled 16× for visibility (128×128 pixels)
- Grayscale rendering
- Numbered sequentially

---

## Build System

### Makefile Structure
```makefile
CC = gcc
CFLAGS = -std=c17 -Wall -Wextra -Wpedantic -g \
         -I/opt/homebrew/include -Iinclude
LDFLAGS = -L/opt/homebrew/lib -ljpeg
```

**Separation of Concerns:**
- `CFLAGS`: Compilation flags only
- `LDFLAGS`: Linking flags only
- Avoids "unused argument" warnings

**Build Process:**
```
.c files → .o files (compilation) → executable (linking)
```

**Targets:**
- `all`: Build executable
- `clean`: Remove artifacts
- `rebuild`: Clean + build