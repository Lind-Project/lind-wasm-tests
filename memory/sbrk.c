#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main() {
    printf("main start\n");
    // Current break position
    void *initial_break = sbrk(0);
    printf("Initial break: %p\n", initial_break);

    // Allocate 1024 bytes of memory
    void *new_break = sbrk(524288);
    if (new_break == (void*) -1) {
        perror("sbrk");
        return 1;
    }
    printf("New break after allocation: %p\n", sbrk(0));

    // Access the newly allocated memory
    int *array = (int*)new_break;
    array[0] = 42;  // Assign a value to the first element
    printf("Value at allocated memory: %d\n", array[0]);

    // Deallocate the 1024 bytes
    if (sbrk(-1024) == (void*) -1) {
        perror("sbrk");
        return 1;
    }
    printf("Break after deallocation: %p\n", sbrk(0));

    return 0;
}
