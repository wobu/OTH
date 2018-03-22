#include <stdio.h>

void printhelp(void)
{
    printf("\n\n");
    printf("Help:\n");
    printf("Option -1: exits the programm\n");
    printf("Option 0: prints the help menu\n");
    printf("Option 1: prints something\n");
}

int main(void)
{
    int option = 0;

    printhelp();

    do
    {
        // printf("DEBUG: %d", option);
        printf("Enter option:");
        scanf("%d", &option);

        switch (option)
        {
        case 0:
            printhelp();
            break;
        case 1:
            printf("Hey there!\n");
            break;
        case -1:
            printf("bye bye!\n");
            break;
        default:
            printf("'%d' is not a valid option!\n", option);
            printhelp();
            option = 0;
            break;
        }

    } while (option >= 0);

    return 0;
}
