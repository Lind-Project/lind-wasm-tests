#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

void print_memory(const void *addr, size_t length) {
    const unsigned char *ptr = (const unsigned char *)addr;
    size_t i, j;

    for (i = 0; i < length; i += 16) {
        // Print the memory address
        printf("%08zx  ", (size_t)(ptr + i));

        // Print the hex values
        for (j = 0; j < 16; j++) {
            if (i + j < length) {
                printf("%02x ", ptr[i + j]);
            } else {
                printf("   "); // For alignment when block is not full
            }
        }
        printf("\n");
    }
}

int main() {
    pid_t ret = fork();
    
    if(ret == 0)
    {
        // child
        printf("before exec\n");
        char *args[] = { "../exit.cwasm", "arg1", "233", NULL };
        // printf("char* size: %d\n", sizeof(char*));
        // print_memory((void *)args, 256);
        // printf("args: %d, args[0]: %d\n", args, args[0]);
        execv(args[0], args);
        printf("after exec (should not reach)\n");
    }
    else
    {
        // parent
        printf("I am parent, my pid=%d, my child's pid=%d\n", getpid(), ret);
        // for(;;);
    }

    return 0;
}