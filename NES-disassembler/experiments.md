# Performance Comparison Experiments

## Benchmark Results

#### Sizes:
- mm.nes: 40KB
- Indivisible.nes: 256KB
- Tetris.nes: 256KB
- Dragon_Warrior_IV_USA.nes: 512KB

### Command used:
- gtime -f "Time: %E  Memory: %M KB" ./ines_disassembler < rom file path >

| ROM File | Tool | Time | Memory Usage |
|----------|------|------|--------------|
| mm.nes | RETRODISASM (v0.3.0) | 0:00.03 | 17408 KB |
| Indivisible.nes | RETRODISASM (v0.3.0) | 0:00.08 | 51248 KB |
| Tetris.nes | RETRODISASM (v0.3.0) | 0:00.11 | 52256 KB |
| Dragon_Warrior_IV_USA.nes | RETRODISASM (v0.3.0) | 0:00.55 | 173792 KB |
| mm.nes | NES_disassembler | 0:00.17 | 14112 KB |
| Indivisible.nes | NES_disassembler | 0:01.50 | 14080 KB |
| Tetris.nes | NES_disassembler | 0:01.58 | 14224 KB |
| Dragon_Warrior_IV_USA.nes | NES_disassembler | N/A | N/A |
| mm.nes | NES_disassembler w/o CHR | 0:00.08 | 14064 KB |
| Indivisible.nes | NES_disassembler w/o CHR | 0:00.13 | 14000 KB |
| Tetris.nes | NES_disassembler w/o CHR | 0:00.15 | 14224 KB |
| Dragon_Warrior_IV_USA.nes | NES_disassembler w/o CHR | 0:00.53 | 14048 KB |

## Observations

- **Memory Efficiency**: NES_disassembler consistently uses less memory (~14MB) compared to RETRODISASM which scales with ROM size (17MB-173MB)
- **CHR Processing Impact**: CHR-ROM extraction significantly increases processing time (~10x slower) but has minimal memory impact
- **Large ROM Handling**: NES_disassembler successfully processes 512KB ROMs but will take significant amount of time creating JPEGs from CHR ROM
