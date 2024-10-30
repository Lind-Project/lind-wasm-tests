#include <stdio.h>

int main() {
    // Open a file in write mode
    FILE *file = fopen("output.txt", "w");
    if (file == NULL) {
        perror("Error opening file");
        return 1;
    }

    // String to write to the file
    const char *str = "Hello, World! This is a test of fputs.\n";

    // Write the string to the file using fputs
    if (fputs(str, file) == EOF) {
        perror("Error writing to file");
        fclose(file);
        return 1;
    }

    // Close the file
    fclose(file);
    printf("String written to output.txt successfully.\n");

    return 0;
}
