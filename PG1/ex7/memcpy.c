#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void main(void)
{
    int i = 100;
    int j = 1;

    memcpy(&i, &j, sizeof(int));

    printf("i = %d j = %d", i, j);
}