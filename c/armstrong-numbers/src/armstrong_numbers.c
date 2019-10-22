#include "armstrong_numbers.h"
int numLen(int n) {
  if (n < 10) {
    return 1;
  }
  int length = 0;
  for (int i = n; i > 0; i /= 10) {
    length++;
  }
  return length;
}
bool is_armstrong_number(int n) {
  int sumOfPows = 0;
  int numberOfDigits = numLen(n);
  for (int i = 0, j = 1; i < numberOfDigits; i++, j *= 10) {
    int currentDigit = (n / j) % 10;
    sumOfPows += pow(currentDigit, numberOfDigits);
  }
  if (sumOfPows == n) {
    return true;
  }
  return false;
}