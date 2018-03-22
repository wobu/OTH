#include <stdio.h>

int potenz(int base, int n);

int main(void)
{
    int result = potenz(2, 10);

    printf("%d", result);
}

int potenz(int base, int n)
{
    if (n == 0) 
    {
        return 1;
    } 
    else
    {
        return base * potenz(base, n - 1);
    }
}