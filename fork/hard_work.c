#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

int main(int argc, char *argv[]) {
    for (int i = 0; i < argc; i++) {
        printf("Argument %d: %s\n", i, argv[i]);
    }

    printf("%d: doing some hard work...\n", getpid());
    int level = 1000;
    while(level--)
    {
        int times = 1000000;
        while(times--);
    }
    printf("%d: finished!\n", getpid());

    return 123;
}