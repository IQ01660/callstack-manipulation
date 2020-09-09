#include <stdio.h>
#include <stdlib.h>

size_t string_length (char* str);

int main (int argc, char** argv) {

  int length = string_length("12345");
  printf("%d\n", length);

  length = string_length("The quick brown fox jumps over the lazy dog.");
  printf("%d\n", length);
  
  return 0;
  
}
