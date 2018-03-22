#include <stdio.h>

#define ARRAY_SIZE 8

int main(void)
{
    int input[ARRAY_SIZE];

    printf("Bitte geben sie %d ganze Zahlen ein.\n", ARRAY_SIZE);

    for (int i = 0; i < ARRAY_SIZE; i++)
    {
        printf("Zahl %d: ", i + 1);
        scanf("%d", &input[i]);
    }

    for (int i = 0; i < ARRAY_SIZE; i++)
    {
        printf("Index %d\t Value: %d, Ptr: %d\n", i, input[i], &input[i]);
    }
}