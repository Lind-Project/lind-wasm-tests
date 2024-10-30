// tmp fork test, verify if memory is shared/copied

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

int i = 0;

// Function to print a chunk of memory in hexadecimal format
void print_memory(const void *address, size_t size) {
    const unsigned char *ptr = (const unsigned char *)address;
    
    printf("(%d)Memory content at address %p:\n", i, (void *)address);
    for (size_t i = 0; i < size; i++) {
        if (i % 16 == 0 && i != 0) {
            printf("\n"); // Print a newline after every 16 bytes for better readability
        }
        printf("%02x ", ptr[i]); // Print each byte as a two-digit hexadecimal number
    }
    printf("\n");
}

void myfunction() {
    int local = 1;

    printf("myfunctioin local address: %p, local=%d\n", &local, local);

    print_memory(&local - 100, 256);

    fork();
}

int main() {
    int times = 1000000;
    while(times--);

    printf("i=%d\n", i);
    i++;

    int local = 41;
    printf("local=%d\n", local);

    // print_memory(&local - 100, 400);

    pid_t pid;

    if(i == 2)
    {
        print_memory(&local - 100, 512);
    }

    int deadbeef = 0xdeadbeef;
    if(i == 1) deadbeef = 0xbbbbbbbb;
    else deadbeef = 0xaaaaaaaa;

    // int *pointer = malloc(10);

    // printf("local address: %p, local=%d\n", &local, local);
    // printf("pointer address: %p\n", pointer);
    // print_memory(&local - 100, 512);

    if(i == 2)
    {
        print_memory(&local - 100, 512);
        for(;;);
        return 0;
    }
    
    printf("test: before fork\n");
    // myfunction();
    fork();
    printf("test: after fork\n");

    // if (pid < 0) {
    //     // Fork failed
    //     printf("Fork failed!\n");
    //     return 1;
    // } else if (pid == 0) {
    //     // Child process
    //     printf("This is the child process. PID: %d\n", getpid());
    //     printf("Child's parent PID: %d\n", getppid());
    // } else {
    //     // Parent process
    //     printf("This is the parent process. PID: %d\n", getpid());
    //     printf("Parent created a child with PID: %d\n", pid);
    // }

    print_memory(&local - 100, 512);
    int top_level = 10;
    while(top_level--)
    {
        times = 1000000;
        while(times--);
    }

    print_memory(&local - 100, 512);

    for(;;);

    return 0;
}