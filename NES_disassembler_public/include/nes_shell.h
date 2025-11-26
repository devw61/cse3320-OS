#include "instruction_set.h"
#include "mappers.h"
#include "parse.h"

#include <signal.h>
#include <unistd.h>

typedef enum {
    COMMENT,
    NO_COMMENT,
    HTML
} output_type;

// Prototypes
output_type run_nes_shell(cartridge *cart, mapper_type *mapper,
                          uint32_t prg_rom_end_addr, uint32_t chr_rom_end_addr);
void print_disassembly(cartridge *cart, mapper_type *mapper,
                       uint32_t start_addr,
                       uint32_t end_addr);
void change_o_type(char *desired_o_type, int *o_type);
void print_man(void);
static void handle_signal(int sig);
void catch_signal(void);
