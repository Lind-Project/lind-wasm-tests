// process2.c
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

size_t page_size = 4096;

void print_memory(const void *address, size_t length) {
    const unsigned char *ptr = (const unsigned char *)address; // Cast to unsigned char pointer for byte access
    
    printf("Memory at address %p:\n", address);
    
    for (size_t i = 0; i < length; i++) {
        // Print the address and the value at that address
        printf("%02x ", ptr[i]);
        if((i + 1) % 32 == 0) printf("\n");
    }
    printf("\n");
    printf("-------------------------\n");
}

void my_memset(const void *address, size_t length, char val) {
    unsigned char *ptr = (unsigned char *)address; // Cast to unsigned char pointer for byte access
    for (size_t i = 0; i < length; i++) {
        ptr[i] = val;
    }
}

void *create_mmap(int fd)
{   
    printf("create mmap\n");
    // Step 1: Allocate memory with MAP_PRIVATE
    void *ptr = mmap(NULL, 3 * page_size, PROT_READ | PROT_WRITE,
                     MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (ptr == MAP_FAILED) {
        perror("mmap failed");
        exit(1);
    }

    // strcpy(ptr, "Hello, MAP_PRIVATE!");
    // printf("Original content: %s\n", (char *)ptr);
    void *shared_mem = ptr + page_size;

    // Step 2: Unmap the memory
    // if (munmap(shared_mem, page_size) == -1) {
    //     perror("munmap failed");
    //     exit(1);
    // }

    // Step 3: Re-map with MAP_SHARED
    void *new_ptr = mmap(shared_mem, page_size, PROT_READ | PROT_WRITE,
                         MAP_SHARED | MAP_FIXED, fd, 0);
    if (new_ptr == MAP_FAILED) {
        perror("mmap failed with MAP_SHARED");
        exit(1);
    }

    // void *ptr2 = mmap(new_ptr + page_size, page_size, PROT_READ | PROT_WRITE,
    //                  MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
    // if (ptr == MAP_FAILED) {
    //     perror("mmap failed");
    //     exit(1);
    // }

    // printf("ptr: %p, shared: %p, ptr2: %p\n", ptr, new_ptr, ptr2);
    
    return ptr;
}

int main() {
    const char *shm_name = "/my_shared_memory";

    // Open the existing shared memory object
    int fd = shm_open(shm_name, O_RDWR, 0666);
    if (fd < 0) {
        perror("shm_open failed");
        exit(1);
    }

    // Map the shared memory
    char *shared_mem = create_mmap(fd);
    if (shared_mem == MAP_FAILED) {
        perror("mmap failed");
        exit(1);
    }

    getchar();

    printf("start memset\n");
    // memset(shared_mem, 3 * page_size, 0);
    my_memset(shared_mem, 3 * page_size, 0);
    printf("memset done\n");

    getchar();

    print_memory(shared_mem, 3 * page_size);

    // Cleanup
    munmap(shared_mem, 3 * page_size);
    close(fd);
    return 0;
}
