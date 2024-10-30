#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    pid_t ret = fork();
    
    if(ret == 0)
    {
        // child
        char *args[] = { "hard_work.cwasm", "1", "args", NULL };
        execv(args[0], args);
        printf("after exec (should not reach)\n");
    }
    else
    {
        // parent
        printf("I am parent, my pid=%d, my child's pid=%d\n", getpid(), ret);
        
        pid_t ret2 = fork();
        if(ret2 == 0)
        {
            // child
            char *args[] = { "../exit.cwasm", "2", "args", NULL };
            execv(args[0], args);
            printf("after exec (should not reach)\n");
        }
        else
        {
            // parent
            printf("I am parent, my pid=%d, my child's pid=%d\n", getpid(), ret2);
            printf("wait for one child...\n");
            int status = -1;
            int pid1 = wait(&status);
            printf("child %d returns with status %d\n", pid1, status);
            printf("wait for another child...\n");
            int pid2 = wait(&status);
            printf("child %d returns with status %d\n", pid2, status);
        }
    }

    return 0;
}