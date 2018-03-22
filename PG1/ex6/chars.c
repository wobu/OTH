#include <stdio.h>

void ausgabeKleinbuchstaben()
{
    for(char c = 'a'; c <= 'z'; c++)
    {
        printf("ASCII value: %d \t '%c' %x \n\r", c, c, c);
    }
}


int main(void)
{
    ausgabeKleinbuchstaben();

    int test = 3;
    int *ptr = &test;
    printf("%p\n", &test);
    printf("%p\n", ptr);
    printf("%p\n", &ptr);
    printf("%d\n", *ptr);
}
