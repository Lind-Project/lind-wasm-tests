#include <stdio.h>

// Declaring environ as an external variable
extern char **environ;

int main(int argc, char *argv[]) {
    char **env = environ;
    printf("args:\n");
    for(int i = 0; i < argc; ++i)
        printf("%s\n", argv[i]);

    printf("\nenvs:\n");
    while (*env) {
        printf("%s\n", *env);
        env++;
    }

    return 0;
}
