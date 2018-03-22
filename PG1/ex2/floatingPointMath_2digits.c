/**
 * Author: Wolfgang Buchner (buw32270)
 * Created: 15.10.2017
 * 
 */
#include <stdio.h>

/**
 * A programm which do some simple math operations on two entered floating points and prints the results.
 */
int main(void)
{
    float x,y;
    printf("\n\tEin Rechenprogramm f?r Flie?kommazahlen\n");
    printf("\t----------------------------------------------------------\n");
    printf("\nBitte einen Wert f?r x eingeben (Kommazahlen bitte!): ");
    scanf("%f",&x);
    printf("\nBitte einen Wert f?r y eingeben (Kommazahlen bitte!): ");
    scanf("%f", &y);
    printf("\n Sie haben f?r x und y folgende Werte eingegeben:\n x = %.2f,\n y= %.2f\n",x,y);
    printf("\n Nun werden diese Werte addiert: %.2f + %.2f = %.2f\n",x,y,x+y);
    printf("\n Nun werden diese Werte subtrahiert: %.2f - %.2f = %.2f\n",x,y,x-y);

    printf("\n Nun werden diese Werte multipliziert: %.2f * %.2f = %.2f\n",x,y,x*y);
    printf("\n Nun werden diese Werte dividiert: %.2f / %.2f = %.2f\n",x,y,x/y);

    return 0;
}