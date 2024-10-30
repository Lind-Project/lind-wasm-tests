#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>  // For mprotect

// A simple machine code for 'return 42;'
// This is x86-64 machine code for a function that returns 42
unsigned char code[] = {
    0xB8, 0x2A, 0x00, 0x00, 0x00, // mov eax, 42
    0xC3                          // ret
};

int main() {
    // Allocate memory with executable permission
    size_t code_size = sizeof(code);
    void *mem = mmap(NULL, code_size, PROT_READ | PROT_WRITE | PROT_EXEC,
                     MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (mem == MAP_FAILED) {
        perror("mmap");
        return EXIT_FAILURE;
    }

    // Copy the code into the allocated memory
    memcpy(mem, code, code_size);

    // Cast the memory to a function pointer
    int (*func)() = (int (*)())mem;

    // Call the function
    int result = func();
    printf("Result of the executed code: %d\n", result);

    // Clean up
    if (munmap(mem, code_size) == -1) {
        perror("munmap");
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
