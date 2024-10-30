#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>
#include <arpa/inet.h>

#define PORT 8080
#define BUFFER_SIZE 1024

void *server_function(void *arg) {
    int server_fd, new_socket;
    struct sockaddr_in address;
    int addrlen = sizeof(address);
    char *message = "Hello from server";

    // Create socket file descriptor
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
        perror("Socket failed");
        exit(0);
    }

    // Define server address
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(PORT);

    // Bind the socket to the address
    if (bind(server_fd, (struct sockaddr *)&address, sizeof(address)) < 0) {
        perror("Bind failed");
        close(server_fd);
        exit(0);
    }

    // Listen for incoming connections
    if (listen(server_fd, 3) < 0) {
        perror("Listen failed");
        close(server_fd);
        exit(0);
    }

    printf("Server listening on port %d...\n", PORT);

    // Accept a connection from a client
    if ((new_socket = accept(server_fd, (struct sockaddr *)&address, (socklen_t*)&addrlen)) < 0) {
        perror("Accept failed");
        close(server_fd);
        exit(0);
    }

    // Send a message to the client
    send(new_socket, message, strlen(message), 0);
    printf("Message sent to client: %s\n", message);

    // Close the connection (gracefully)
    close(new_socket);
    printf("Connection closed by server\n");

    close(server_fd);
    exit(0);
}

void client_function() {
    int sock = 0;
    struct sockaddr_in serv_addr;
    char buffer[BUFFER_SIZE] = {0};
    int valread;

    // Create socket file descriptor
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        printf("Socket creation error\n");
        return;
    }

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(PORT);

    // Convert IPv4 addresses from text to binary form
    if (inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr) <= 0) {
        printf("Invalid address/Address not supported\n");
        return;
    }

    // Connect to the server
    if (connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
        printf("Connection failed\n");
        return;
    }

    // Read the message from the server
    valread = read(sock, buffer, BUFFER_SIZE);
    if (valread > 0) {
        printf("Message from server: %s\n", buffer);
    } else if (valread == 0) {
        printf("Server closed the connection (EOF)\n");
    } else {
        perror("Read error");
    }

    // Try reading again after server has closed the connection
    valread = read(sock, buffer, BUFFER_SIZE);
    if (valread == 0) {
        printf("No more data, server closed the connection\n");
    } else if (valread < 0) {
        perror("Read error");
    }

    close(sock);
}

int main() {
    pthread_t server_thread;

    // Create a thread to run the server
    if (pthread_create(&server_thread, NULL, server_function, NULL) != 0) {
        perror("Failed to create server thread");
        return 1;
    }

    // Give the server some time to start up
    sleep(1);

    // Run the client function
    client_function();

    // Wait for the server thread to finish
    pthread_join(server_thread, NULL);

    return 0;
}
