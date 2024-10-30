#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <string.h>

#define FILEPATH "shared_memory_file"

int main(void) {
    int fd = open(FILEPATH, O_RDWR | O_CREAT, 0666);
    void * addr = mmap(NULL, 94489280512, PROT_NONE, MAP_PRIVATE|MAP_ANONYMOUS|MAP_NORESERVE, -1, 0);
    // munmap(addr, 3779883008);
    printf("%p\n", mmap(addr + 0x1000, 0x1000, PROT_READ | PROT_WRITE, MAP_SHARED | MAP_FIXED | MAP_ANONYMOUS, -1, 0));
}