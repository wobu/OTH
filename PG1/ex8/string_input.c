#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void main(void)
{
    char string1[80];
    char string2[80];
    
    fgets(string1, 80, stdin);
    fgets(string2, 80, stdin);

    printf("String1: '%s' length %d\n", string1, strlen(string1));
    printf("String2: '%s' length %d\n", string2, strlen(string2));

    printf("String cat: %s", strcat(string1, string2));
}