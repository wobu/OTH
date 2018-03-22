#include <stdio.h>

int main(void)
{
    int a, b;
    a = b = 5;


    printf("\nPostfix a     Prefix b");
    printf("\n%5d           %6d", a--, --b);
    printf("\n%5d           %6d", a--, --b);
    printf("\n%5d           %6d", a--, --b);
    printf("\n%5d           %6d", a--, --b);
    printf("\n%5d           %6d\n", a--, --b);
    
    return 0;
}