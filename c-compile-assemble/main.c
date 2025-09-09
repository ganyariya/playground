#include <stdio.h>

#include "add.h"

int globalW = 100; // `add.h で宣言された extern int globalW` の実体を定義

int main(int argc, char **argv)
{
    int sum = add(5, 8);

    printf("Sum = %d\n", sum);

    return 0;
}
