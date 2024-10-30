#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <limits.h>
#include <sys/stat.h>

int main() {
    // Path to the directory we want to change to
    const char *new_dir = "/testfiles";

    struct stat statbuf;
    if(fstat(open(".", O_RDONLY), &statbuf) < 0)
    {
        perror("fstat");
        exit(1);
    }
    printf("%lu\n", statbuf.st_ino);

    // Open the directory and get a file descriptor for it
    int fd = open(new_dir, O_RDONLY);
    if (fd == -1) {
        perror("Failed to open directory");
        exit(EXIT_FAILURE);
    }

    // Use fchdir to change the current working directory
    if (fchdir(fd) == -1) {
        perror("fchdir failed");
        close(fd);
        exit(EXIT_FAILURE);
    }

    // Close the directory file descriptor as it’s no longer needed
    close(fd);

    // Get and print the current working directory to confirm the change
    char cwd[PATH_MAX];
    if (getcwd(cwd, sizeof(cwd)) != NULL) {
        printf("Current working directory: %s\n", cwd);
    } else {
        perror("getcwd failed");
        exit(EXIT_FAILURE);
    }

    if(fstat(open(".", O_RDONLY), &statbuf) < 0)
    {
        perror("fstat");
        exit(1);
    }
    printf("%lu\n", statbuf.st_ino);

    return 0;
}
