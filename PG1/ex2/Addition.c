#include <stdio.h>
int main(void){
printf("\n\tEin kleines Additionsprogramm\n");
printf("\nBitte einen ganzzahligen Wert f�r die Variable x eingeben: ");
scanf("%i",&x);
printf("\n Sie haben f�rr die Variable x folgenden Wert eingegeben: %i\n",x);
printf("\nBitte einen ganzzahligen Wert f�r die Variable y eingeben: ");
scanf("%i", &y);
printf("\n Sie haben f�r die Variable y folgenden Wert eingegeben: %i\n",y);
printf("\n %i und %i addiert ergeben den Wert: %i\n",x,y,x+y);
return 0;
}