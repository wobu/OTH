#include <stdio.h>
int main(void)
{
    float a = 0.3;
    printf("%f", a);

    if (a == 0.3)
        printf("Hello World!");
    else
        printf("\nGeht nicht in den if-Zweig!\n\tWeshalb nur?\n");
        
    return 0;
}