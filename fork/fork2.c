#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

void testFork(int level) {
    if (level == 0) {
        return;  // Stop forking after reaching the desired level
    }

    int pid = fork();

    if (pid == 0) {
        printf("I am child!\n");
        testFork(level - 1);
    } else {
        printf("I am parent, new child's pid=%d\n", pid);
    }
}

int main() {
    testFork(4);

    printf("done\n");
    for(;;);

    return 0;
}