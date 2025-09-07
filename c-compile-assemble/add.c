#include "add.h"
#include <stdio.h>

int doubled(int x)
{
    return x * 2;
}

/**
 * x は 2 倍する
 */
int add(int x, int y)
{
    // globalW は add.h で extern 宣言されている
    return globalW + doubled(x) + y;
}
