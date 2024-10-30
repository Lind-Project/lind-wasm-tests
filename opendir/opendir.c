#include <stdio.h>
#include <dirent.h>   // For opendir, readdir, and closedir
#include <stdlib.h>   // For exit()

int main() {
    const char *dirPath = "/";  // Directory to open (current directory)
    
    // Open the directory
    DIR *dir = opendir(dirPath);
    if (dir == NULL) {
        perror("opendir");
        exit(EXIT_FAILURE);
    }

    // Read and print the directory contents
    struct dirent *entry;
    while ((entry = readdir(dir)) != NULL) {
        // char tmp = *(entry->d_name);
        // printf("%d\n", tmp);
        printf("%s:\n", entry->d_name);
        printf("inode: %ld\n", entry->d_ino);
        printf("offset: %ld\n", entry->d_off);
        printf("reclen: %d\n", entry->d_reclen);
        printf("type: %d\n\n", entry->d_type);
    }

    // Close the directory
    closedir(dir);

    return 0;
}
