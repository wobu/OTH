#include <stdio.h>

int main(void)
{
    int input[10];

    int sum;
    float avg;

    int repeat;

    do
    {
        sum = avg = repeat = 0;

        printf("Bitte geben sie 10 ganze Zahlen ein.\n");

        for (int i = 0; i < 10; i++)
        {
            printf("Zahl %d: ", i + 1);
            scanf("%d", &input[i]);
        }

        for (int i = 0; i < 10; i++)
        {
            sum = sum + input[i];
        }

        avg = ((float) sum / 10);

        printf("The avg is: %.2f\n", avg);

        printf("Möchten Sie das Programm erneut ausführen? (1=yes)\n");
        scanf("%d", &repeat);
    } while (repeat);
}