#include <stdio.h>

int main() {
    char str[] = "Hello, World!";
    
    // Loop through each character in the string
    for (int i = 0; str[i] != '\0'; i++) {
        // Output each character using putchar
        putchar(str[i]);
    }

    // Output a newline character at the end
    putchar('\n');

    return 0;
}
