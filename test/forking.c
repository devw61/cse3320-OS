// gcc forking.c -o forking && ./forking
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>

int main()
{

    // make two process which run same
    // program after this instruction
    while(1)
    {
        pid_t pid = fork();
        if(pid == -1){
          perror("Fork Failed: ");
        }
    }
    return 0;
}