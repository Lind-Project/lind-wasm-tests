#include <stdio.h>
#include <stdlib.h>

int main() {
    void *addr1 = malloc(1000000);
    // void *addr2 = malloc(1000);
    printf("addr1: %d\n", addr1);
    // printf("addr2: %d\n", addr2);
    free(addr1);
    // free(addr2);

    return 0;
}
