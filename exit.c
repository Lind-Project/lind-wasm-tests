#include <unistd.h>
#include <string.h>
#include <stdlib.h>

int main() {
  const char* message = "Hello world\n";
  int len = strlen(message);
  write(1, message, len);
  exit(10);

  const char* message2 = "Should not reach here\n";
  int len2 = strlen(message2);
  write(1, message2, len2);
  // return 0;
}