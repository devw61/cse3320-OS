#ifndef CG
#define CG

#include "call_graph.h"

int check_for_jmp(const char *opcode) {
  return ((strcmp("JMP", opcode) == 0) || (strcmp("JSR", opcode) == 0));
}

void init_subroutine(uint32_t strt_addr) {
  subroutine *sr = (subroutine *)malloc(sizeof(subroutine));

  // init values
  sr->calls_sr = NULL;
  sr->start_addr = strt_addr;
}

void add_called_sr(linked_list **head, uint32_t addr) {
  // Create new node
  linked_list *new_node = (linked_list *)malloc(sizeof(linked_list));
  new_node->sr_addr = addr;
  new_node->next = NULL;

  // If list is empty, set head to new node
  if (*head == NULL) {
    *head = new_node;
    return;
  }

  // Otherwise, traverse to the end and add new node
  linked_list *tmp = *head;
  while (tmp->next != NULL) {
    tmp = tmp->next;
  }
  tmp->next = new_node;
}

void free_linked_list(linked_list *head) {
  linked_list *tmp;

  while (head) {
    tmp = head;
    head = head->next;
    free(tmp);
  }
}

void read_subroutine(cartridge *cart, mapper_type *mapper, uint32_t addr, uint32_t rom_size, char *f_name) {
  // return if outside prg rom addresses
  if (addr < 0x8000 || addr > 0xFFFF) {
    return;
  }

  uint8_t opcode = '\0';
  subroutine *sub = (subroutine *)malloc(sizeof(subroutine));

  sub->start_addr = addr;

  // while not return to subroutine cmd
  do {
    opcode = mapper->r_cpu(cart, (uint16_t)addr);
    opcode_entry entry = cpu_opcodes[opcode];

    if (entry.mnemonic && check_for_jmp(entry.mnemonic)) {
      add_called_sr(&sub->calls_sr, get_jmp_address(cart, mapper, addr));
    }

    addr += entry.mnemonic ? entry.size : 1;
  } while (opcode != 0x60);

  write_sr(sub, f_name);

  free_linked_list(sub->calls_sr);
  free(sub);
}

void print_call_graph(subroutine *sr) {
  linked_list *tmp = sr->calls_sr;

  printf("Subroutine at $%04X calls:\n", sr->start_addr);

  while (tmp) {
    printf("\t$%04X\n", tmp->sr_addr);
    tmp = tmp->next;
  }
  printf("\n");
}

void write_sr(subroutine *sr, char *filename) {
  FILE *file;
  char file_path[50];
  linked_list *tmp = sr->calls_sr;

  sprintf(file_path, "output_files/%s.txt", filename);

  file = fopen(file_path, "a+");

  if (file == NULL) {
    perror("subroutine file:");
  }

  // print subroutine content
  fprintf(file, "Subroutine at $%04X calls:\n", sr->start_addr);

  while (tmp) {
    fprintf(file, "\t$%04X\n", tmp->sr_addr);
    tmp = tmp->next;
  }

  // extra newline for readability
  fprintf(file, "\n");

  fclose(file);
}

uint32_t get_jmp_address(cartridge *cart, mapper_type *mapper, uint32_t addr) {
  uint32_t jmp_addr = 0x0;

  uint16_t low_bytes = mapper->r_cpu(cart, (uint16_t)addr + 1);
  uint16_t high_bytes = mapper->r_cpu(cart, (uint16_t)addr + 2);

  jmp_addr += low_bytes;
  jmp_addr = jmp_addr << 8; // 2 bytes
  jmp_addr += high_bytes;

  return jmp_addr;
}

#endif // CG
