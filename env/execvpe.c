// test_execvpe.c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) { // Child process
        printf("Testing execvpe in child process...\n");
        char *argv[] = { "child_program", "arg1", "arg2", NULL };
        char *envp[] = { "MY_ENV=value1", "MY_ENV2=value2", NULL };
        execvpe("child_program", argv, envp);
        perror("execvpe failed");
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
