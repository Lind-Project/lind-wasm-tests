#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>
#include <string.h>
#include <semaphore.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h>

// create semaphores
sem_t sems[5];
int shared_counter = 0;

void run_semaphores(int id, int num)
{
    printf("Process %d: Starting to run semaphores.\n", id);

    // wait and post semaphores, and modify the shared counter
    for (int i = 0; i < num; i++)
    {
        printf("Process %d: Waiting on semaphore %d...\n", id, i);
        int status = sem_wait(&sems[i]);

        if (status != 0)
        {
            perror("Process %d: Error in sem_wait");
            exit(1);
        }

        // Critical section: safely increment shared counter
        int local_copy = shared_counter;
        printf("Process %d: In critical section. Shared counter: %d\n", id, local_copy);
        local_copy++;
        shared_counter = local_copy;
        printf("Process %d: Incremented shared counter. New value: %d\n", id, shared_counter);

        printf("Process %d: Successfully waited on semaphore %d. Now posting...\n", id, i);
        sem_post(&sems[i]);
        printf("Process %d: Posted to semaphore %d.\n", id, i);
    }

    // destroy semaphores in the range num/2 - 1 to num/2 + 1
    printf("Process %d: Destroying semaphores in the range %d to %d.\n", id, num / 2 - 1, num / 2 + 1);
    for (int i = num / 2 - 1; i < num / 2 + 2; i++)
    {
        sem_destroy(&sems[i]);
        printf("Process %d: Destroyed semaphore %d.\n", id, i);
    }

    printf("Process %d: Finished running semaphores.\n", id);
}

int main()
{
    printf("Main process: Initializing semaphores...\n");

    // Initialize semaphores
    for (int i = 0; i < 5; i++)
    {
        sem_init(&sems[i], 0, 1);
        printf("Main process: Initialized semaphore %d.\n", i);
    }

    // Fork child processes
    for (int i = 0; i < 4; i++)
    {
        if (fork() == 0)
        {
            // Child process
            printf("Child process %d: Starting.\n", i + 1);
            run_semaphores(i + 1, 5);
            printf("Child process %d: Exiting.\n", i + 1);
            return 0;
        }
    }

    // Main process also runs semaphores
    printf("Main process: Running semaphores.\n");
    run_semaphores(0, 5);

    printf("Main process: Finished execution.\n");
    printf("Final value of shared counter: %d\n", shared_counter);
    return 0;
}
