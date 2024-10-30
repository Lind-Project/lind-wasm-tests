#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Usage: %s <source_file> <destination_file>\n", argv[0]);
        return EXIT_FAILURE;
    }

    // Open source file for reading
    int fd_in = open(argv[1], O_RDONLY);
    if (fd_in < 0) {
        perror("Error opening source file");
        return EXIT_FAILURE;
    }

    // Open destination file for writing, create it if it doesn't exist
    int fd_out = open(argv[2], O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd_out < 0) {
        perror("Error opening destination file");
        close(fd_in);
        return EXIT_FAILURE;
    }

    ssize_t bytes_copied;
    off_t offset_in = 0, offset_out = 0;

    // Copy data from source to destination
    while ((bytes_copied = copy_file_range(fd_in, &offset_in, fd_out, &offset_out, 4096, 0)) > 0) {
        // Successfully copied bytes
    }

    if (bytes_copied < 0) {
        perror("Error copying file");
    } else {
        printf("Successfully copied %zd bytes from %s to %s\n", offset_out, argv[1], argv[2]);
    }

    // Close file descriptors
    close(fd_in);
    close(fd_out);

    return EXIT_SUCCESS;
}
