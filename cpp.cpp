#include <iostream>
using namespace std;

int main() {
  // Declare variables
  int a = 5;
  float b = 3.14;
  char c = 'A';
  char s[] = "Hello, World!";

  // Print variables using cout
  cout << "The value of a is " << a << endl;
  cout << "The value of b is " << b << endl;
  cout << "The value of c is " << c << endl;
  cout << "The value of s is " << s << endl;

  // Print variables using cout
  cout << endl << "Using cout:" << endl;
  cout << "The value of s is" << endl;
  cout << s << endl;

  // Print variables using cout
  cout << endl << "Using cout:" << endl;
  cout << a << endl; // This will print the ASCII code for the value of a
  cout << c << endl;
  cout << s << endl;

  return 0;
}