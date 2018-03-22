/**
 * Author: unknown
 * Created: 15.10.2017
 * 
 */
#include <stdio.h>

/**
 * A programm which adds two entered integers and prints the result.
 */
int main(void)
{
    int x = 0;
    int y = 0;
    printf("\n\tEin kleines Additionsprogramm\n");
    printf("\nBitte einen ganzzahligen Wert für die Variable x eingeben: ");
    scanf("%i",&x);
    printf("\n Sie haben fürr die Variable x folgenden Wert eingegeben: %i\n",x);
    printf("\nBitte einen ganzzahligen Wert für die Variable y eingeben: ");
    scanf("%i", &y);
    printf("\n Sie haben für die Variable y folgenden Wert eingegeben: %i\n",y);
    printf("\n %i und %i addiert ergeben den Wert: %i\n",x,y,x+y);
    return 0;
}