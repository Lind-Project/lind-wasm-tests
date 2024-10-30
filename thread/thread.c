#include <pthread.h>
#include <stdio.h>

void* thread_function(void* arg) {
    const char* message = "test: Hello from thread\n";
    printf("%s", message);
    int times = 10000000;
    while(times--);
    printf("test: thread finished\n");
    return NULL;
}
int main() {
    pthread_t thread;
    pthread_create(&thread, NULL, thread_function, NULL);
    printf("test: pthread_create finished\n");
    printf("test: pthread join start\n");
    int ret = pthread_join(thread, NULL);
    printf("test: pthread join ret=%d\n", ret);
    return 0;
}