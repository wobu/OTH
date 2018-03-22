#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int wordCount(char *text);
int linesCount(char *text);
// int[] charCount(char text[]);

char *inputString(FILE *fp, size_t size)
{
    //The size is extended by the input with the value of the provisional
    char *str;
    int ch;
    size_t len = 0;
    str = realloc(NULL, sizeof(char) * size); //size is start size
    if (!str)
        return str;
    while (EOF != (ch = fgetc(fp)))
    {
        str[len++] = ch;
        if (len == size)
        {
            str = realloc(str, sizeof(char) * (size += 16));
            if (!str)
                return str;
        }
    }
    str[len++] = '\0';

    return realloc(str, sizeof(char) * len);
}

int main(void)
{
    printf("Please enter a text and end it with hitting Strg+Z + Enter.\n\n");
    char *text;
    // char text[] = "Hello, i'm a text with some words.\nAlso new linesCount should be there.";

    text = inputString(stdin, 10);

    int words = wordCount(text);
    int lines = linesCount(text);

    printf("words: %d\n", words);
    printf("lines: %d\n", lines);

    free(text);

    return EXIT_SUCCESS;
}

int wordCount(char *text)
{
    int length = strlen(text);
    int count = 0;

    char previous = ' ';

    for (int i = 0; i < length; i++)
    {  
        if ((*(text + i) == '\n' && previous != '\n') || (*(text + i) == ' ' && previous !=  ' ')) 
        {
            count++;
        }

        previous = *(text + i);
    }

    return (count > 0) ? count + 1 : 0;
}

int linesCount(char *text)
{
    int length = strlen(text);
    int count = 1;

    for (int i = 0; i < length; i++)
    {
        if (*(text + i) == '\n')
        {
            count++;
        }
    }

    return count;
}