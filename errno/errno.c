#include <errno.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
    if(unlink("123") < 0)
    {
        perror("unlink");
        exit(1);
    }

    return 0;
}