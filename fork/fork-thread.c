#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>

int global_var = 0;

void* thread_function(void* arg) {
    const char* message = "Hello from thread\n";
    printf("%s", message);

    return NULL;
}
int main() {
    pthread_t thread;
    pthread_create(&thread, NULL, thread_function, NULL);

    int ret = pthread_join(thread, NULL);
    printf("thread joined\n");

    int pid = fork();
    printf("fork returned %d\n", pid);

    for(;;);
    
    return 0;
}