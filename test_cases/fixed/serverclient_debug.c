#include <unistd.h>
#include <stdio.h> 
#include <sys/socket.h> 
#include <stdlib.h> 
#include <netinet/in.h> 
#include <string.h> 
#include <arpa/inet.h> 
#include <pthread.h> 
#define PORT 9995
pthread_barrier_t barrier;
pthread_barrier_t barrier2;
pthread_barrier_t barrier3;
pthread_barrier_t barrier4;
pthread_barrier_t barrier5;
pthread_barrier_t barrier6;
pthread_barrier_t barrier7;
pthread_barrier_t barrier8;
pthread_barrier_t barrier9;
pthread_barrier_t barrier10;
pthread_barrier_t barrier11;
pthread_barrier_t barrier12;

extern int __stack_pointer;

char s[10];

void itoa(int num, char* str, int base) {
    int i = 0;
    int isNegative = 0;

    // Handle zero explicitly, otherwise empty string is printed
    if (num == 0) {
        str[i++] = '0';
        str[i] = '\0';
        return;
    }

    // Handle negative numbers for base 10
    if (num < 0 && base == 10) {
        isNegative = 1;
        num = -num;
    }

    // Process individual digits
    while (num != 0) {
        int rem = num % base;
        str[i++] = (rem > 9) ? (rem - 10) + 'a' : rem + '0';  // Handle digits > 9 for base > 10
        num = num / base;
    }

    // Append '-' if the number is negative
    if (isNegative) {
        str[i++] = '-';
    }

    str[i] = '\0';  // Null-terminate the string

    // Reverse the string
    int start = 0;
    int end = i - 1;
    while (start < end) {
        char temp = str[start];
        str[start] = str[end];
        str[end] = temp;
        start++;
        end--;
    }
}

void mywrite(char* msg) {
    write(0, msg, strlen(msg));
}

void writenum(int num) {
    char buf[32];
    itoa(num, buf, 10);
    mywrite(buf);
}

void writenum_p(int num, char *pad) {
    writenum(num);
    mywrite(pad);
}

void print_memory() {
    const unsigned char *byte = (const unsigned char *)4141;
    int len = 999;
    char hex_str[3];  // To store the 2-digit hex value and a space or newline

    for (size_t i = 0; i < len; i++) {
        // Convert each byte to two-digit hexadecimal and store in hex_str
        hex_str[0] = "0123456789abcdef"[byte[i] >> 4];  // Upper nibble
        hex_str[1] = "0123456789abcdef"[byte[i] & 0x0F]; // Lower nibble
        hex_str[2] = ' ';

        // Write the two-digit hex string followed by a space
        write(STDOUT_FILENO, hex_str, 3);

        // Optional: Add a newline after every 16 bytes for readability
        if ((i + 1) % 16 == 0) {
            write(STDOUT_FILENO, "\n", 1);
        }
    }

    // Final newline
    write(STDOUT_FILENO, "\n", 1);
}

void* client(void* v) { 
    pthread_barrier_wait(&barrier);
    // printf("client: start\n");
    int sock = 0, valread; 
    int garbage_upper = 0;
    // int gap2[2048] = {0};
    struct sockaddr_in serv_addr; 
    // int gap1[2048] = {0};
    int garbage = 0;
    // printf("serv_addr: %d, size: %d\n", serv_addr, sizeof(struct sockaddr_in));
    char *hello = "Hello from client"; 
    pthread_barrier_wait(&barrier7);
    pthread_barrier_wait(&barrier8);
    char buffer[1024] = {0};
    long opt = 1;
    mywrite("buffer: ") ;
    writenum_p((int)buffer, "\n");
    mywrite("buffer[1]: ") ;
    writenum_p((int)&(buffer[1]), "\n");
    mywrite("&garbage: ") ;
    writenum_p((int)&garbage, "\n");
    mywrite("&opt: ") ;
    writenum_p((int)&opt, "\n");
    pthread_barrier_wait(&barrier9);
    pthread_barrier_wait(&barrier10);
    // printf("client: create socket\n");
    sock = socket(AF_INET, SOCK_STREAM, 0);
    // printf("client: set sockopt\n");
    if (setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt))) {
        perror("setsockopt"); 
        exit(EXIT_FAILURE); 
    }
    serv_addr.sin_family = AF_INET; 
    serv_addr.sin_port = htons(PORT); 
       
    // Convert IPv4 and IPv6 addresses from text to binary form 
    inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr);
   
    // printf("client: barrier wait, garbage: %d, garbage_upper: %d\n", garbage, garbage_upper);
    // sleep(1);
    // printf("client: connect, garbage: %d, garbage_upper: %d\n", garbage, garbage_upper);
    pthread_barrier_wait(&barrier2);
    int connret = connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr));
    char *message = "123\n";
    // printf("%s", message);
    // mywrite(message);
    // write(0, "123\n", 4);
    pthread_barrier_wait(&barrier3);
    pthread_barrier_wait(&barrier4);
    // printf("client: send, garbage: %d, garbage_upper: %d\n", garbage, garbage_upper);
    send(sock , hello , strlen(hello) + 1 , 0 );
    pthread_barrier_wait(&barrier5);
    pthread_barrier_wait(&barrier6);
    // printf("client: Hello message sent\n");
    mywrite("client: Hello message sent\n");
    valread = recv( sock , buffer, 1024, 0); 
    // printf("*client received: %s\n",buffer ); 
    // mywrite("*client received: %s\n",buffer ); 
    mywrite("*client received: "); 
    mywrite(buffer);
    mywrite("\n");
    return NULL; 
} 

void* server(void* v) {
    // printf("server: start\n");
    // mywrite("server: start\n");
    int server_fd, new_socket, valread; 
    mywrite("server_fd address: ");
    writenum_p((int)&server_fd, "\n"); // 133432
    mywrite("server stack pointer: ");
    print_stack_pointer();

    struct sockaddr_in address; 
    long opt = 1;
    int addrlen = sizeof(address); 
    // char gap[1024] = {0}; 
    char buffer[1024] = {0}; 
    // printf("buffer: %d\n", buffer);
    mywrite("0: ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    // printf("0: ");
    // for(int i = 0; i < 20; ++i) printf("%d ", buffer[i]);
    // printf("\n");

    char *hello = "Hello from server"; 
       
    printf("server: creating socket\n");
    // Creating socket file descriptor 
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
        perror("socket failed"); 
        exit(EXIT_FAILURE); 
    }

    mywrite("1: ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    mywrite("serverfd: ");
    writenum_p(server_fd, "\n");
    // printf("1: ");
    // for(int i = 0; i < 20; ++i) printf("%d ", buffer[i]);
    // printf("\n");
    
    // printf("server: setsockopt\n");
    // Forcefully attaching socket to the port
    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt))) {
        perror("setsockopt"); 
        exit(EXIT_FAILURE); 
    } 
    address.sin_family = AF_INET; 
    address.sin_addr.s_addr = INADDR_ANY; 
    address.sin_port = htons( PORT ); 
       
    mywrite("2: ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    mywrite("serverfd: ");
    writenum_p(server_fd, "\n");
    // printf("2: ");
    // for(int i = 0; i < 20; ++i) printf("%d ", buffer[i]);
    // printf("\n");
    
    // printf("server: bind\n");
    // Forcefully attaching socket to the port
    if (bind(server_fd, (struct sockaddr *)&address,  
                                 sizeof(address))<0) { 
        perror("bind failed"); 
        exit(EXIT_FAILURE); 
    } 
    mywrite("3: ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    mywrite("serverfd: ");
    writenum_p(server_fd, "\n");
    // printf("3: ");
    // for(int i = 0; i < 20; ++i) printf("%d ", buffer[i]);
    // printf("\n");
    
    // printf("server: listen\n");
    if (listen(server_fd, 3) < 0) 
    { 
        perror("listen"); 
        exit(EXIT_FAILURE); 
    } 
    mywrite("4: ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    mywrite("serverfd: ");
    writenum_p(server_fd, "\n");
    // printf("4: ");
    // for(int i = 0; i < 20; ++i) printf("%d ", buffer[i]);
    // printf("\n");
    
    // printf("server: barrier_wait barrier: %d\n", barrier);
    pthread_barrier_wait(&barrier);

    pthread_barrier_wait(&barrier7);
    mywrite("4.1: ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    mywrite("serverfd: ");
    writenum_p(server_fd, "\n");
    pthread_barrier_wait(&barrier8);
    pthread_barrier_wait(&barrier9);
    mywrite("4.2: ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    mywrite("serverfd: ");
    writenum_p(server_fd, "\n");
    pthread_barrier_wait(&barrier10);

    mywrite("5 (before connect): ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    mywrite("serverfd: ");
    writenum_p(server_fd, "\n");
    // printf("5 (before connect): ");
    // for(int i = 0; i < 20; ++i) printf("%d ", buffer[i]);
    // printf("\n");
    pthread_barrier_wait(&barrier2);
    mywrite("5.1 (after connect): ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    mywrite("serverfd: ");
    writenum_p(server_fd, "\n");
    // printf("5.1 (after connect): ");
    // for(int i = 0; i < 20; ++i) printf("%d ", buffer[i]);
    // printf("\n");
    pthread_barrier_wait(&barrier3);
    mywrite("5.2 (before send):  ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    mywrite("serverfd: ");
    writenum_p(server_fd, "\n");
    // printf("5.2 (before send): ");
    // for(int i = 0; i < 20; ++i) printf("%d ", buffer[i]);
    // printf("\n");
    pthread_barrier_wait(&barrier4);
    pthread_barrier_wait(&barrier5);
    mywrite("5.3 (after send): ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    mywrite("serverfd: ");
    writenum_p(server_fd, "\n");
    // printf("5.3 (after send): ");
    // for(int i = 0; i < 20; ++i) printf("%d ", buffer[i]);
    // printf("\n");
    pthread_barrier_wait(&barrier6);
    // printf("%s\n", buffer);
    mywrite("server: accept ");
    writenum_p(server_fd, "\n");
    if ((new_socket = accept(server_fd, (struct sockaddr *)&address,  
                       (socklen_t*)&addrlen))<0) { 
        printf("accept failed");
        perror("accept"); 
        exit(EXIT_FAILURE); 
    } 
    mywrite("6: ");
    for(int i = 0; i < 20; ++i) writenum_p(buffer[i], " ");
    mywrite("\n");
    // printf("6: ");
    // for(int i = 0; i < 20; ++i) printf("%d ", buffer[i]);
    // printf("\n");
    valread = recv( new_socket , buffer, 1024, 0);
    // for(int i = 0; i < 20; ++i) printf("%d ", buffer[i]);
    // printf("\n");
    mywrite("*server received: ");
    mywrite(buffer);
    mywrite("\n");
    // printf("*server received: %s\n",buffer ); 
    send(new_socket , hello , strlen(hello) + 1, 0 ); 
    // printf("server: Hello message sent\n"); 
    mywrite("server: Hello message sent\n"); 
    return NULL;
} 

int main() {
    pthread_t serverthread, clientthread1, clientthread2;
    printf("before pthread_barrier_init\n");
    pthread_barrier_init(&barrier, NULL, 2);
    pthread_barrier_init(&barrier2, NULL, 2);
    pthread_barrier_init(&barrier3, NULL, 2);
    pthread_barrier_init(&barrier4, NULL, 2);
    pthread_barrier_init(&barrier5, NULL, 2);
    pthread_barrier_init(&barrier6, NULL, 2);
    pthread_barrier_init(&barrier7, NULL, 2);
    pthread_barrier_init(&barrier8, NULL, 2);
    pthread_barrier_init(&barrier9, NULL, 2);
    pthread_barrier_init(&barrier10, NULL, 2);
    pthread_barrier_init(&barrier11, NULL, 2);
    pthread_barrier_init(&barrier12, NULL, 2);
    printf("creating server threads\n");
    int var = 0;
    mywrite("var address: ");
    writenum_p((int)&var, "\n"); // 133432
    mywrite("main stack pointer: ");
    print_stack_pointer();
    pthread_create(&serverthread, NULL, server, NULL);
    mywrite("main stack pointer after thread: ");
    print_stack_pointer();
    // printf("creating client threads\n");
    // pthread_create(&clientthread1, NULL, client, NULL);
    // printf("join client\n");
    // pthread_join(clientthread1, NULL);
    client(0);
    printf("join server\n");
    pthread_join(serverthread, NULL);
    printf("destory\n");
    pthread_barrier_destroy(&barrier);
    print_memory();
    return 0;
}
