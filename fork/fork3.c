#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

int main() {
    printf("before fork\n");
    pid_t ret = fork();
    printf("after fork\n");
    
    if(ret == 0)
    {
        printf("I am child, my pid=%d!\n", getpid());
        printf("child wait\n");
        int times = 100000;
        while(times--);
        printf("child done waiting\n");
        printf("child exits\n");
        return 0;
    }
    else
    {
        printf("I am parent, my pid=%d, my child's pid=%d\n", getpid(), ret);
        printf("parent exits\n");
        return 0;
    }

    return 0;
}