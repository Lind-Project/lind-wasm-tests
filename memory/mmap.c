#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>

int main() {
    void *addr1 = mmap(NULL, 10, PROT_READ | PROT_WRITE,
                      MAP_SHARED | MAP_ANONYMOUS, -1, 0);
    printf("addr1: %d\n", addr1);

    return 0;
}
