#define _GNU_SOURCE
#include <sched.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

// Size of the stack for the new thread/process
// #define STACK_SIZE 1024 * 1024
#define STACK_SIZE 1024

// Function to be executed by the new thread/process
int child_function(void *arg) {
    printf("Child thread/process: PID = %ld, Arg = %ld\n", (long)getpid(), (long)arg);
    return 10;
}

int main() {
    printf("main!\n");
    // Allocate stack for the new thread/process
    void *stack = malloc(STACK_SIZE);
    if (!stack) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    printf("stack: %p\n", stack);

    // Create a new thread/process
    // int flags = CLONE_VM | CLONE_FS | CLONE_FILES | CLONE_SIGHAND | SIGCHLD;
    int flags = CLONE_FS | CLONE_FILES | CLONE_SIGHAND | SIGCHLD;
    pid_t pid = clone(child_function, stack + STACK_SIZE, flags, (void *)1234);

    if (pid == -1) {
        perror("clone");
        // free(stack);
        exit(EXIT_FAILURE);
    }

    // Wait for the child process/thread to finish
    printf("Parent process: PID = %ld, Child PID = %ld\n", (long)getpid(), (long)pid);
    int status;
    int rpid = wait(&status);
    printf("%d returns: %d\n", rpid, status);
    // waitpid(pid, NULL, 0);

    // Free allocated stack
    // free(stack);
    return 0;
}
