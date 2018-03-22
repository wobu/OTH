#include <stdio.h>

#define LIMIT 56

void display_stars(void)
{
    int counter;
    printf("\n\t");
    for (counter = 0; counter < LIMIT; counter++)
        printf("*");
    printf("\n");
}

int main()
{
    int x, y;
    display_stars();
    printf("bla bla");
    display_stars();
    printf("Wert x:");
    scanf("%d", &x);
    printf("\n\t... Wert y:");
    scanf("%d", &y);

    if (x>y)
    {
        printf("\n\tx = %d ist groesser als y\n", x);
    }
    else
    {
        printf("");
    }
}