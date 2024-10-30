#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

int main(int argc, char *argv[]) {
    int level = 0;
    if(argc > 0) level = atoi(argv[1]);

    if(level >= 5) return 0;

    char level_str[20];
    snprintf(level_str, sizeof(level_str), "%d", level + 1);

    pid_t ret = fork();
    
    if(ret == 0)
    {
        printf("%d: child before exec\n", level);
        char *args[] = { "exec2.cwasm", level_str, NULL };
        execv(args[0], args);
        printf("%d: child after exec (should not reach)\n", level);
    }
    else
    {
        // parent
        printf("%d: parent: my pid=%d, my child's pid=%d\n", level, getpid(), ret);
    }

    return 0;
}