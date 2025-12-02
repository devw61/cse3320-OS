
# Project Overview
The assignment is to create a disassembler for NES games, which involves developing a program that can
parse NES game ROMs, extract the program code and graphics data, and generate human-readable assembly
output. The disassembler should be able to handle different mapper 

# Technical Background

The Nintendo Entertainment System (NES) used the MOS 6502 8-bit
microprocessor, which featured:

-   56 documented opcodes with various addressing modes

-   16-bit address space (64KB)

-   Memory-mapped I/O

-   Bank switching for games larger than 32KB

NES game ROMs typically use the iNES format (.nes files), which
includes:

-   16-byte header with metadata

-   PRG-ROM (program code)

-   CHR-ROM (character/graphics data) -- 8x8 pixel tiles stored in 2-bit
    planar format

-   Optional trainer data

Graphics on the NES are tile-based, with each 8x8 pixel tile using 2
bits per pixel (4 possible colors). The CHR-ROM data is stored in a
specific planar format where the two bit planes are separated, requiring
bit manipulation to reconstruct the final pixel values.

# Project Requirements

## Core Functionality 

1.  **ROM File Parser**

    -   Parse iNES header format

    -   Extract PRG-ROM and CHR-ROM sections

    -   Handle different mapper types (focus on NROM initially)

    -   Validate file integrity

2.  **6502 Disassembler Engine**

    -   Implement complete 6502 instruction set

    -   Support all addressing modes (immediate, zero page, absolute,
        indexed, indirect, etc.)

    -   Generate human-readable assembly output

    -   Handle invalid/undefined opcodes gracefully

3.  **Memory Layout Analysis**

    -   Map ROM data to appropriate address ranges

    -   Implement basic bank switching logic

    -   Distinguish between code and data sections

4.  **Output Generation**

    -   Generate .asm files with proper syntax

    -   Include comments with hex values and addresses

    -   Format output for readability (proper indentation, spacing)
  
5.  **CHR-ROM Graphics Extraction**

    -   Parse CHR-ROM data (character/sprite data)

    -   Convert NES tile format (8x8 pixels, 2bpp) to modern formats

    -   Generate PNG/BMP files showing all available tiles

    -   Create tile sheets and sprite collections

    -   Optional: Apply basic color palettes for visualization


## Advanced Features 

Choose at least 2 of the following:

1.  **Control Flow Analysis**

    -   Identify subroutines and their boundaries

    -   Trace jumps and branches

    -   Generate call graphs

2.  **Data Analysis**

    -   Identify data tables vs. executable code

    -   Detect text strings and sprite data

    -   Analyze graphics patterns in CHR-ROM

3.  **Symbol Generation**

    -   Generate meaningful labels for subroutines

    -   Create variable names for zero-page addresses

    -   Import known NES hardware register names

5.  **Interactive Features**

    -   Command-line interface with options

    -   Selective disassembly (address ranges)

    -   Multiple output formats (raw assembly, commented, HTML)

6.  **Mapper Support**

    -   Implement additional mapper types (MMC1, MMC3, etc.)

    -   Handle bank switching in disassembly output

## Documentation and Testing 

1.  **Technical Documentation**

    -   Design document explaining architecture

    -   User manual with installation and usage instructions

    -   Code comments and documentation

2.  **Testing Suite**

    -   Unit tests for core components

    -   Test with multiple NES ROMs of varying complexity

    -   Performance analysis and optimization

# Deliverables

1.  **Source Code** 

    -   Complete C/C++ implementation

    -   Makefile for compilation

    -   Clean, well-documented code following style guidelines

2.  **Test Results**

    -   Output files from disassembling at least 3 different games

    -   Extracted tile sheets and graphics (if CHR-ROM extraction
        implemented)

    -   Comparison with existing disassemblers (if available)

    -   Performance benchmarks

3.  **Final Report** 

    -   15-20 pages covering design decisions, challenges, and solutions

    -   Analysis of results and accuracy

    -   Future improvements and extensions

4.  **Presentation** (Week 10)

    -   15-minute demo of the disassembler in action

    -   Discussion of technical challenges and solutions

# Technical Specifications

## Programming Requirements

-   **Language:** C or C++

-   **Platform:** Linux/Unix (must compile with GCC)

-   **Memory Usage:** Efficient handling of ROM files up to 1MB

-   **No External Libraries:** Standard library only (stdio, stdlib, string, etc.) You may use libjpeg and libpng.

## Input Format

-   Support iNES format (.nes files)

-   Handle ROMs from 16KB to 512KB

-   Graceful error handling for corrupted files

## Output Format

``` {.objectivec language="C" caption="Example Assembly Output"}
; Super Mario Bros. (Disassembled)
; Address: $8000-$BFFF

.org $8000

RESET:                  ; $8000
    SEI                 ; $8000: $78 - Disable interrupts
    CLD                 ; $8001: $D8 - Clear decimal mode
    LDX #$40            ; $8002: $A2 $40 - Load X with $40
    STX $4017           ; $8004: $8D $17 $40 - Store to APU
    ; ... continues
```

# Resources and References

## Technical Documentation

-   6502 instruction set reference

-   iNES format specification

-   NES hardware documentation

