#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>

int main() {
    int fd = open(".", O_RDONLY);
    close(fd);

    fd = open(".", O_RDONLY);
    int fd2 = dup(fd);
    close(fd);

    fd = dup(fd2);
    close(fd2);

    fd2 = open(".", O_RDONLY);
    int fd3 = dup(fd2);
    close(fd);

    fd = open(".", O_RDONLY);
    close(fd2);
    close(fd3);

    struct stat statbuf;
    if (fstat(fd, &statbuf) < 0) {
        perror("fstat");
        close(fd);
        exit(EXIT_FAILURE);
    }

    return 0;
}