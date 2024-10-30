// test_execlp.c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) { // Child process
        printf("Testing execlp in child process...\n");
        execlp("child_program", "child_program", "arg1", "arg2", NULL);
        perror("execlp failed");
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
