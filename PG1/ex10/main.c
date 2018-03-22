#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* str_append(char* s1, const char* s2);

void main(void)
{
    char* result = str_append("test", "hi");
    printf("%s", result);
}

char* str_append(char* s1, const char* s2)
{
    // int s1_len = strlen(s1);
    // int s2_len = strlen(s2);

    // printf("s1 %d", s1_len);
    // printf("s2 %d", s2_len);

    realloc(s1, sizeof(char*) * (strlen(s1) + strlen(s2) + 1));

    char* p = s1;
    const char* p2 = s2;

    // while(*p != '\0')
    // {
    //     p++;
    // }

    while(*p++)

    while(*p2)
    {
        *p++ = *p2++;
    }

    // *p = '\0';

    // for(int i = 0; *(s2 + i) != '\0'; i++)
    // {
    //     *(p + i) = *(s2 + i);
    // }
    
    return s1;
}