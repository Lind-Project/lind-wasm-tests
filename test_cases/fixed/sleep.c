#include <stdio.h>
#include <unistd.h>  // For the sleep() system call
#include <sys/types.h>
#include <sys/stat.h>

int main() {
    int seconds = 5;  // Set the number of seconds to sleep

    // Print a message before sleeping
    printf("Sleeping for %d seconds...\n", seconds);

    // Call the sleep() function to pause execution
    sleep(5);

    // Print a message after waking up
    printf("Woke up after %d seconds of sleep.\n", seconds);

    return 0;  // Return 0 to indicate successful execution
}
