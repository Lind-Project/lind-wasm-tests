// test_execv.c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) { // Child process
        printf("Testing execv in child process...\n");
        char *argv[] = { "./child_program.cwasm", "arg1", "arg2", NULL };
        execv("./child_program.cwasm", argv);
        perror("execv failed");
        exit(1);
    } else if (pid > 0) { // Parent process
        wait(NULL);
        printf("Parent process finished.\n");
    } else {
        perror("fork failed");
        exit(1);
    }

    return 0;
}
