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
        printf("I am child %d!\n", getpid());
        printf("child: doing some work...\n");
        int times = 100000;
        while(times--);
        printf("child: finished work!\n");
        return 0;
    }
    else
    {
        // parent
        printf("I am parent %d!\n", getpid());
        printf("parent: wait for child...\n");
        int status = -1;
        int pid = wait(&status);
        printf("parent: child %d returns with %d\n", pid, status);
        return 0;
    }

    return 0;
}