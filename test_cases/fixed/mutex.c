#include<pthread.h>
#include<stdlib.h>
#include<sys/wait.h>
#include<stdio.h>
#include<unistd.h>
pthread_mutex_t pmt;
pthread_cond_t pct;

void* lock_and_unlock(void* _) {
    printf("before locking child\n");
    pthread_mutex_lock(&pmt);
    printf("locked child\n");
    pthread_mutex_unlock(&pmt);
    printf("unlock child\n");
    pthread_cond_signal(&pct);
    printf("child done\n");
}

int main() {
    pthread_mutex_init(&pmt, NULL);
    pthread_cond_init(&pct, NULL);
    printf("pthread init done\n");
    pthread_mutex_lock(&pmt);
    printf("lock pmt\n");
    pthread_t pt;
    pthread_create(&pt, NULL, &lock_and_unlock, NULL);
    printf("child create\n");
    sleep(2);
    printf("sleep done\n");
    pthread_cond_wait(&pct, &pmt);
    printf("done cond_wait\n");
    sleep(1);
    printf("wake up!\n");
    pthread_mutex_unlock(&pmt);
    printf("unlocked parent\n");
    sleep(1);
    printf("destory!\n");
    pthread_mutex_destroy(&pmt);
    pthread_cond_destroy(&pct);
    pthread_join(pt, NULL);
}
