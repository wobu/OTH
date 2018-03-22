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
    printf("\n\tEin Rechenprogramm für Fließkommazahlen\n");
    printf("\t----------------------------------------------------------\n");
    printf("\nBitte einen Wert für x eingeben (Kommazahlen bitte!): ");
    scanf("%f",&x);
    printf("\nBitte einen Wert für y eingeben (Kommazahlen bitte!): ");
    scanf("%f", &y);
    printf("\n Sie haben für x und y folgende Werte eingegeben:\n x = %f,\n y= %f\n",x,y);
    printf("\n Nun werden diese Werte addiert: %f + %f = %f\n",x,y,x+y);
    printf("\n Nun werden diese Werte subtrahiert: %f - %f = %f\n",x,y,x-y);

    printf("\n Nun werden diese Werte multipliziert: %f * %f = %f\n",x,y,x*y);
    printf("\n Nun werden diese Werte dividiert: %f / %f = %f\n",x,y,x/y);

    return 0;
}