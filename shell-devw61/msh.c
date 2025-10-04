// The MIT License (MIT)
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

#define _GNU_SOURCE

#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <signal.h>

#define WHITESPACE " \t\n"      // We want to split our command line up into tokens
                                // so we need to define what delimits our tokens.
                                // In this case  white space
                                // will separate the tokens on our command line

#define MAX_COMMAND_SIZE 128    // The maximum command-line size
#define MAX_NUM_ARGUMENTS 11    // 10 max args, 11th ind for null termination in execvp


// structs

// prototypes
void clean_memory(char *tokens[], char *head);

void exec_cmd(char *cmd_path, char *args[], int ord_i, int ird_i);
void cd(char *cmd_path, char *args[]);
void redirect(char *args[], int i);
void execute_pipeline(char *cmd_args[], int pipe_positions[], int num_pipes);

void catch_signal();
static void handle_signal(int sig);

void add_cmd_to_hist(char *cmd);
char *get_hist_cmd(int line_num);
void print_hist();

int main(int argc, char *argv[]) {

  printf("WARNING TO USER: whenever using grep, do not use double or single quotes\n\n");

  char * command_string = (char*) malloc( MAX_COMMAND_SIZE );

  // catch SIGINT and SIGTSTP 
  catch_signal();
  signal(SIGTSTP, handle_signal);

  while( 1 ) {
    // Print out the msh prompt
    printf ("msh> ");

    // Read the command from the commandline.  The
    // maximum command that will be read is MAX_COMMAND_SIZE
    // This while command will wait here until the user
    // inputs something since fgets returns NULL when there
    // is no input
    while( !fgets (command_string, MAX_COMMAND_SIZE, stdin) );

    // print history given command
    if (strcmp(command_string, "history\n") == 0) {
      print_hist();
      continue;
    // dont record blank lines
    } else if (strcmp(command_string, "\n") == 0) {
      continue;
    }

    add_cmd_to_hist(command_string);

    // get command from hist
    if (command_string[0] == '!'){
      char *str = NULL;
      while ((str = strsep(&command_string, "!")) != NULL) {
        if (strcmp(str, "") != 0) {
          command_string = get_hist_cmd(atoi(str));
          break;
        }
      }
    }

    /* Parse input */
    char *token[MAX_NUM_ARGUMENTS];
    int   token_count = 0;                                 

    for( int i = 0; i < MAX_NUM_ARGUMENTS; i++ ) {
      token[i] = NULL;
    }

    // Pointer to point to the token
    // parsed by strsep
    char *argument_ptr = NULL;                                         
    char *working_string  = strdup( command_string );

    // arrays of inp/out redirects + pipes indexes to keep track of each if multiple 
    int ord_ind = -1, ird_arr = -1, pip_arr[MAX_NUM_ARGUMENTS], index_tracker = 0;

    // init pipe array
    for (int i = 0; i<3 ;i++) {
      pip_arr[i] = -1;
    }

    // we are going to move the working_string pointer so
    // keep track of its original value so we can deallocate
    // the correct amount at the end
    char *head_ptr = working_string;


    // Tokenize the input strings with whitespace used as the delimiter
    while ( ( (argument_ptr = strsep(&working_string, WHITESPACE ) ) != NULL) && (token_count<MAX_NUM_ARGUMENTS)) {
      token[token_count] = strndup( argument_ptr, MAX_COMMAND_SIZE );
      if( strlen( token[token_count] ) == 0 ) {
        token[token_count] = NULL;
      } else {
        // get indexes of redirects or pipe if in command
        if (strcmp(token[token_count], ">") == 0) ord_ind = token_count;
        if (strcmp(token[token_count], "<") == 0) ird_arr = token_count;
        if (strcmp(token[token_count], "|") == 0) pip_arr[index_tracker++] = token_count;
      }
      token_count++;
    }

    // for easier understanding and writing
    char  *command = strdup(token[0]),
          **cmd_args = &token[0];
    int num_pipes = index_tracker;

    // check for stop commands and stop if true
    if (strcmp(command, "quit") == 0 || strcmp(command, "exit") == 0) {
      printf("\nExiting msh\n");
      break;
    }

    // exec conditionals
    if (strcmp(command, "cd") == 0){
      cd(command, cmd_args);
    } else if (pip_arr[0] != -1) { // pipe operation
      execute_pipeline(cmd_args, pip_arr, num_pipes);
    } else { // exec norm commands
      exec_cmd(command, cmd_args, ord_ind, ird_arr);
    }

    // Cleanup allocated memory
    clean_memory(token, head_ptr);
  }

  free( command_string );

  return 0;
}

// to make main look cleaner
void clean_memory(char *tokens[], char *head) {
  for (int i = 0; i < MAX_NUM_ARGUMENTS; i++) {
    if (tokens[i] != NULL) {
      free(tokens[i]);
    }
  }
  free(head);
}

void exec_cmd(char *cmd, char *args[], int ord_i, int ird_i) {
  pid_t pid = fork(); // create child proc for cmd
  if (pid == 0) { // if child proc
    if (ord_i != -1) redirect(args, ord_i); // output redirect
    if (ird_i != -1) redirect(args, ird_i); // input redirect

    int res = execvp(cmd, args);

    exit(1); // if cmd not found exec didn't run
  } else {
    int status;
    wait(&status); // wait for child to finish 

    if (status) printf("%s: Command not found\n", cmd); // print respective response
  }
}

void cd(char *cmd_path, char *args[]) {
  if (args[1] == NULL) { // cmd was cd
    chdir(getenv("HOME"));
  } else if (chdir(args[1]) != 0) { // cmd was cd <path>
    perror("cd");
  }
}

void add_cmd_to_hist(char *cmd){
  FILE *file = fopen(".logs", "a+"); // apped to not erase previous commands
  if (file == NULL){
    perror("Error Opening Logs");
  }

  // write command 
  fprintf(file, "%s", cmd);
  fclose(file);
}

char *get_hist_cmd(int line_num) {
  char *cmd_str = (char*)malloc(MAX_COMMAND_SIZE);
  FILE *file = fopen(".logs", "r+");

  if (file == NULL){
    perror("error opening logs");
  }
  
  // iterate through log file till line_num
  for (int curr_line = 1; fgets(cmd_str, MAX_COMMAND_SIZE, file) != NULL; curr_line++) {
    if (curr_line == line_num){
      return cmd_str; // return command if found
    }
  }
  
  // return error if not row does not exist
  sprintf(cmd_str, "!%d: Command not in history", line_num); 

  return cmd_str;
}

void print_hist() {
  FILE *file = fopen(".logs", "r+");
  if (file == NULL) {
    perror("Error Opening Logs");
  }

  char *line_str = (char *)malloc(MAX_COMMAND_SIZE);
  int curr_line = 0;

  fseek(file, 0, SEEK_END);

  // iterate through fifty recent commands 
  for (long pos = ftell(file)-1; pos >= 0 && curr_line < 50; pos--){ // set fp to end of file
    // set fp to next char and get it
    fseek(file, pos, SEEK_SET); 
    char letter = fgetc(file);

    // if new line, reached end of pervious line
    if (letter == '\n' || pos == 0) {
      // go to start of curr_line 
      (letter == '\n')  ? fseek(file, pos+1, SEEK_SET) // start of curr line
                        : fseek(file, pos, SEEK_SET); // beginning of file

      // get str of curr line and print
      if (fgets(line_str, MAX_COMMAND_SIZE, file) != NULL) {
        printf("[%d] %s", curr_line + 1, line_str);
        curr_line++;
      }
    } 
  }

  fclose(file);
}

void redirect(char *args[], int i) {
  // open with respective conditions based on type of redirect
  int fd = (strcmp(args[i], ">") == 0)
              ? open(args[i + 1], O_RDWR | O_CREAT, S_IRUSR | S_IWUSR)
              : open(args[i + 1], O_RDONLY);
  if (fd < 0) {
    perror("input fd open fail");
    exit(1);
  }
  
  // output redirect
  if ((strcmp(args[i], ">") == 0) && (dup2(fd, STDOUT_FILENO) < 0)) { // set output stream to file
    perror("output dup2 failed");
    close(fd);
    exit(1);
  // input redirect
  } else if ((strcmp(args[i], "<") == 0) && (dup2(fd, STDIN_FILENO) < 0)) { // set input stream to file
    perror("input dup2 failed");
    close(fd);
    exit(1);
  }

  // to not read as args in exec
  args[i] = NULL;
  args[i + 1] = NULL;
}

void execute_pipeline(char *cmd_args[], int pipe_pos[], int num_pipes) {
  int num_cmds = num_pipes + 1, status;
  int pipes[num_pipes][2];  // array of pfds
  pid_t pids[num_cmds]; // array of pids
  int ird_i = -1, ord_i = -1;
  
  // create pipes
  for (int i = 0; i < num_pipes; i++) {
    if (pipe(pipes[i]) == -1) {
      perror("pipe");
      exit(1);
    }
  }
  
  // iterate through pipes
  for (int cmd = 0; cmd < num_cmds; cmd++) {
    pids[cmd] = fork();
    
    if (pids[cmd] == 0) {
      // get output of previous pipe
      if (cmd > 0) dup2(pipes[cmd-1][0], STDIN_FILENO);
      
      // output result for next pipe
      if (cmd < num_cmds - 1) dup2(pipes[cmd][1], STDOUT_FILENO);
      
      // close pipes
      for (int i = 0; i < num_pipes; i++) {
        close(pipes[i][0]);
        close(pipes[i][1]);
      }
      
      // build command arguments for curr command
      char *curr_cmd_args[MAX_NUM_ARGUMENTS];
      int start_pos = (cmd == 0) ? 0 : pipe_pos[cmd-1] + 1; // if first cmd, comand is at 0, else, command after last pipe
      int end_pos = (cmd == num_cmds - 1) ? MAX_NUM_ARGUMENTS : pipe_pos[cmd]; // if last command, end is end of arr, else, pipe index since for loop is non-inclusive
      
      // get arguments for curr command
      int arg_index = 0;
      for (int i = start_pos; i < end_pos && cmd_args[i] != NULL; i++) {
        curr_cmd_args[arg_index++] = strndup(cmd_args[i], MAX_NUM_ARGUMENTS);
        if (strcmp(cmd_args[i], ">") == 0) ord_i = i-start_pos;
        if (strcmp(cmd_args[i], "<") == 0) ird_i = i-start_pos;
      }
      curr_cmd_args[arg_index] = NULL; // null terminate

      if (ord_i != -1) redirect(curr_cmd_args, ord_i); // output redirect
      if (ird_i != -1) redirect(curr_cmd_args, ird_i); // output redirect

      // execute command
      execvp(curr_cmd_args[0], curr_cmd_args);
      perror("execvp failed");
      exit(1);
    }
  }
  
  // close pipes for parent
  for (int i = 0; i < num_pipes; i++) {
    close(pipes[i][0]);
    close(pipes[i][1]);
  }
  
  // wait for children
  for (int i = 0; i < num_cmds; i++) {
    waitpid(pids[i], &status, 0);
    if (status) {
      printf("Command %d failed\n", i + 1);
    }
  }
}

static void handle_signal (int sig ) {
  if (sig == 2) printf("\nCan't do that, try typing 'quit' or 'exit'\n\nmsh> "); // sigint
  else printf("\nCan't do that, try typing 'quit' or 'exit'(enter to cont.)\n"); // sigtstp
}

void catch_signal(){
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