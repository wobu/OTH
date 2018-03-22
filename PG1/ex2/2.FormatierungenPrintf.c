//
// Created by buw32270 on 19.10.2017.
//
#include <stdio.h>

int main()
{
    // Deklaration mit Initialisierung
    int dutzend = 12, EineZwei = 2;
    double preisApfel = 1.45, preisRadio = 109.95;

    /**
     * Ausgabe für Tabelle von ganzen Zahlen,
     * teilweise mit führenden Nullen
     */

    printf("Ein Dutzend sind %20d Stueck.\n", dutzend);
    printf("Eine Zwei mit fuehrenden Nullen: %020d\n", EineZwei);

    printf("\nPreise in Euro:\n\n");
    printf("%010.2f Euro\n", preisApfel);
    printf("%010.2f Euro\n", preisRadio);

    return 0;
}
