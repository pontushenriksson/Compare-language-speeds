#include <stdio.h>

int main(void) {
  // Declare variables
  int a = 5;
  float b = 3.14;
  char c = 'A';
  char s[] = "Hello, World!";

  // Print variables using printf
  printf("The value of a is %d\n", a);
  printf("The value of b is %f\n", b);
  printf("The value of c is %c\n", c);
  printf("The value of s is %s\n", s);

  // Print variables using puts
  puts(""); // Print a blank line
  puts("Using puts:");
  puts("The value of s is");
  puts(s);

  // Print variables using putchar
  putchar('\n'); // Print a newline character
  putchar('U');
  putchar('s');
  putchar('i');
  putchar('n');
  putchar('g');
  putchar(' ');
  putchar('p');
  putchar('u');
  putchar('t');
  putchar('c');
  putchar('h');
  putchar('a');
  putchar('r');
  putchar(':');
  putchar('\n');
  putchar(a); // This will print the ASCII code for the value of a
  putchar(b); 
  putchar(c);
  putchar(s); 

  return 0;
}