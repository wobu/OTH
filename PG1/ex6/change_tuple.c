#include <stdio.h>

void change_tuple(void *a, void *b)
{
    void *temp;
    
    temp = a;

    a = b;
    b = temp;

    // printf("a = %d, b = %d\n", *(int *)a, *(int *)b);
}

void main(void)
{
    int i = 1;
    int j = 2;
    int *iptr = &i;
    int *jptr = &j;

    change_tuple(iptr, jptr);

    printf("i = %d, j = %d\n", *(int *)iptr, *(int *)jptr);

    // char *a;
    // *a = 'a';
    // char *b;
    // *b = 'b';

    // change_tuple(a, b);

    // printf("a = %c, b = %c\n", a, b);
}