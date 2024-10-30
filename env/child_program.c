// child_program.c
#include <stdio.h>
#include <stdlib.h>

extern char **environ;

int main(int argc, char *argv[]) {
    printf("Child program executed successfully!\n");

    // Print the arguments passed
    printf("Arguments:\n");
    for (int i = 0; argv[i] != NULL; i++) {
        printf("  argv[%d]: %s\n", i, argv[i]);
    }

    // Print the environment variables passed
    printf("Environment Variables:\n");
    for (int i = 0; environ[i] != NULL; i++) {
        printf("  envp[%d]: %s\n", i, environ[i]);
    }

    return 0;
}
