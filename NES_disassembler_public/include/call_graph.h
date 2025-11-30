#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mappers.h"
#include "parse.h"
#include "instruction_set.h"

// structs
typedef struct linked_list {
    uint32_t sr_addr;
    struct linked_list *next;
} linked_list;

typedef struct {
    uint32_t start_addr;
    linked_list *calls_sr;
} subroutine;

// proptypes
int check_for_jmp(const char *opcode);
void print_call_graph(subroutine *sr);
void init_subroutine(uint32_t strt_addr);
void free_linked_list(linked_list *head);
void write_sr(subroutine *sr, char *filename);
void add_called_sr(linked_list **head, uint32_t addr);
uint32_t get_jmp_address(cartridge *cart, mapper_type *mapper, uint32_t addr);
void read_subroutine(cartridge *cart, mapper_type *mapper, uint32_t addr, uint32_t rom_size, char *f_name);
