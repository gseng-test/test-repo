#include <stdio.h>

int main(int argc, char** argv)
{
  int firstNum, secondNum;

  sscanf(argv[1], "%d", &firstNum);
  sscanf(argv[2], "%d", &secondNum);

  fprintf(stdout, "The sum is %d\n", firstNum + secondNum);

  return 0;
}

