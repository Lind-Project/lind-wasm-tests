#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

int main() {
    printf("before fork: %d\n", getpid());
    pid_t ret = fork();
    printf("after fork\n");
    
    if(ret == 0)
    {
        printf("I am child, my pid=%d!\n", getpid());
    }
    else
    {
        printf("I am parent, my pid=%d, my child's pid=%d\n", getpid(), ret);
    }

    for(;;);

    return 0;
}