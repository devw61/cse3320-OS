// The MIT License(MIT)
//
// Copyright (c) 2023 Trevor Bakker
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
#ifndef NES_SHELL
#define NES_SHELL

#include "nes_shell.h"

#define MAX_COMMAND_SIZE 15
#define MAX_NUM_ARGUMENTS 3
#define WHITESPACE " \t\n"

// int run_nes_shell(cartridge cart, mapper_type mapper, uint32_t prg_end,
// uint32_t chr_end) {
output_type run_nes_shell(cartridge *cart, mapper_type *mapper,
                          uint32_t prg_rom_end_addr,
                          uint32_t chr_rom_end_addr) {
  char *command_string = (char *)malloc(MAX_COMMAND_SIZE);

  // by default, produce file with comment
  int *o_type = (int *)malloc(sizeof(int));
  *o_type = COMMENT;

  catch_signal();
  signal(SIGTSTP, handle_signal);

  while (1) {
    printf("nes> ");

    while (!fgets(command_string, MAX_COMMAND_SIZE, stdin))
      ;

    // COPYRIGHT
    char *argument_ptr = NULL;
    char *working_string = strdup(command_string);
    char *token[MAX_NUM_ARGUMENTS];
    int token_count = 0;

    for (int i = 0; i < MAX_NUM_ARGUMENTS; i++) {
      token[i] = NULL;
    }

    // parse input
    while (((argument_ptr = strsep(&working_string, WHITESPACE)) != NULL) &&
           (token_count < MAX_NUM_ARGUMENTS)) {
      token[token_count] = strndup(argument_ptr, MAX_COMMAND_SIZE);
      if (strlen(token[token_count]) == 0) {
        token[token_count] = NULL;
      }
      token_count++;
    }
    // END OF COPYRIGHT

    char *command = strdup(token[0]), **cmd_args = &token[0];

    // break condition
    if (strcmp(command, "quit") == 0 || strcmp(command, "exit") == 0) {
      printf("\nExiting shell\n");
      break;
    }

    // user options
    if (strcmp(command, "dis") == 0) {
      if (cmd_args[1] == NULL || cmd_args[2] == NULL) {
        printf("\n!!!! ERROR - no arg was given.\n");
        continue;
      }

      uint32_t start_addr = strtoul(cmd_args[1], NULL, 16);
      uint32_t end_addr = strtoul(cmd_args[2], NULL, 16);

      printf("%04X %04X | %04X %04X\n", start_addr, end_addr, chr_rom_end_addr,
             prg_rom_end_addr);

      if (end_addr > prg_rom_end_addr || start_addr < 0) {
        printf("!!!! ERROR - address range out of bounds.\n");
        continue;
      } else if ((end_addr > chr_rom_end_addr &&
                  start_addr < chr_rom_end_addr)) {
        printf("!!!! WARNING - you are accessing CHR ROM and PRG ROM\n");
        sleep(5);
      }

      print_disassembly(cart, mapper, start_addr, end_addr);

    } else if (strcmp(command, "form") == 0) {
      if (cmd_args[1] == NULL) {
        printf("\n!!!! ERROR - no arg was given.\n");
        continue;
      }
      change_o_type(cmd_args[1], o_type);
    } else if ((strcmp(command, "man") == 0) ||
               (strcmp(command, "help") == 0)) {
      print_man();
    } else {
      printf("\nUnrecognized command. Type 'help' or 'man' for list of "
             "commands.\n\n");
    }
  }

  return *o_type;
}

void print_man(void) {
  printf("\n\t\tdis $<04x start address> $<04x end address>\n");
  printf("\t\tform <w/ com, w/o com, html>\n");
  printf("\t\texit: Type 'quit' or 'exit'\n\n");
}

static void handle_signal(int sig) {
  if (sig == 2) {
    printf("\nCan't do that, try typing 'quit' or 'exit'\n\nnes> "); // sigint
  } else {
    printf(
        "\nCan't do that, try typing 'quit' or 'exit'(exit to cont.)\n"); // sigtstp
  }
}

void catch_signal(void) {
  struct sigaction act;

  /* Zero out the sigaction struct */
  memset(&act, '\0', sizeof(act));

  /* Set the handler to use the function handle_signal() */
  act.sa_handler = &handle_signal;

  /* Install the handler and check the return value. */
  if (sigaction(SIGINT, &act, NULL) < 0) {
    perror("sigaction: ");
    exit(1);
  }
}

void print_disassembly(cartridge *cart, mapper_type *mapper,
                       uint32_t start_addr, uint32_t end_addr) {
  uint32_t addr = start_addr;
  uint32_t prg_rom_end = cart->headers->prg_rom_bytes * 16 * 1024;

  while (addr <= end_addr) {
    read_func r_mem = addr <= prg_rom_end ? mapper->r_cpu : mapper->r_ppu;

    if (addr > prg_rom_end) {
      printf("%04x %04x\n", addr, prg_rom_end);
      for (int i = 0; i < 16 && addr + i <= end_addr; i++) {
        printf("%02X ", r_mem(cart, (uint16_t)addr + i - prg_rom_end));
      }
      printf("\n");

      addr += 16;
    } else {
      // recreate normal calling of address
      uint16_t tmp_addr = addr + 0x8000;

      uint8_t opcode = r_mem(cart, tmp_addr);
      opcode_entry entry = cpu_opcodes[opcode];

      // If a valid opcode
      if (entry.mnemonic) {
        // print address: command
        printf("\n\t%-20s; $%04X: ",
               get_opcode_str(entry, cart, r_mem, tmp_addr), tmp_addr);

        // print vals appart of cmd if necessary
        for (int i = 0; i < entry.size; i++) {
          uint8_t val = r_mem(cart, (uint16_t)(tmp_addr + i));
          printf("$%02X ", val);
        }

        // add comment
        printf("- %s", entry.comment);
      }

      addr += entry.size ? entry.size : 1;
    }
  }

  // new line for readability
  printf("\n");
}

void change_o_type(char *desired_o_type, int *o_type) {
  if (strcmp(desired_o_type, "w/ com") == 0) {
    *o_type = COMMENT;
    printf("Format chaged to have comments.\n");
  } else if (strcmp(desired_o_type, "w/o com") == 0) {
    *o_type = NO_COMMENT;
    printf("Format chaged to have NO comments.\n");
  } else if (strcmp(desired_o_type, "html") == 0) {
    *o_type = HTML;
    printf("Format chaged to html.\n");
  } else {
    printf("!!!! ERROR - Output type not recognized.\n");
  }
}

#endif // NES_SHELL
