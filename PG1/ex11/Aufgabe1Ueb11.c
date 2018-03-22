#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<ctype.h>

/* This programm uses an array of pointers to sort input text lines of any sort.
 * Find out how it works and fill in missing pieces of code and preprocessor directives.
 */


#define MAXLINES 500                /* max number of lines to be sorted */
char *lineptr[MAXLINES];      /* array of pointers to text lines to be sorted*/

int readlines(char *lineptr[], int nlines);
void writelines(char *lineptr[], int nlines);
void quicksort(char *v[], int left, int right);   /* sort input lines */

int main(void)
{
    int nlines;                     /* number of input lines read */
    if ((nlines = readlines(lineptr, MAXLINES)) >= 0)
    {
        quicksort(lineptr, 0, nlines-1);
        writelines(lineptr, nlines);
        // ...................;
    }
    else
    {   printf("\nError: Too many lines to sort!\n");
        return 1;
    }
}

#define MAXLEN 1000                 /* max length of any input line */

int getline(char s[],int lim)
{
    int c, i;

    for (i=0; i < lim-1 && (c=getchar())!=EOF && c!='\n'; ++i)
        s[i] = isalpha(c) ? (c >= 'a' ? c : c + 32) : c; /* change character read to lower case */
    if (c == '\n')
        {
          s[i] = c;
          ++i;
        }
    s[i] = '\0';
    return i;                   /* return length of line read */
}

/* readlines: read input lines and allocate dynamic memory space */
int readlines(char *lineptr[], int maxlines)
{   int len, nlines = 0;
    char *p, line[MAXLEN];

    while ((len = getline(line, MAXLEN)) > 0)
    if (nlines >= maxlines || ((p = malloc(sizeof(char) * MAXLEN)) == NULL)  /* allocate memory space to pointer p using malloc() */)
                                    /* Don't forget to check on NULL! */
        return -1;
    else
    {
        line[len-1] = '\0';     /* delete newline marker*/
        strcpy(p, line);  /* copy line to where p points to using strcpy() */
        lineptr[nlines++] = p;  /* advance in line-pointer array... */
    }
    return nlines;              /* return how many lines read */
}
/* writelines: write output lines */
void writelines(char *lineptr[], int nlines)
{
    int i;
    for (i = 0; i < nlines; i++)
         printf("%s\n", lineptr[i]);
}
/* qsort: sort v[left]...v[right] into increasing order */
void quicksort(char *v[], int left, int right)
{
    int i, last;
    void swap(char *v[], int i, int j);

    if (left >= right)          /* do nothing if array contains */
        return;                 /* fewer than two elements */
    swap(v, left, (left + right)/2);
    last = left;
    for (i = left+1; i <= right; i++)
        if (strcmp(v[i], v[left]) < 0)
            swap(v, ++last, i);
    swap(v, left, last);
    quicksort(v, left, last-1);
    quicksort(v, last+1, right);
}
/* swap: interchange v[i] and v[j] */
void swap(char *v[], int i, int j)
{
    char *temp;
    temp = v[i];                /* complete swap function using index notation */
    v[i] = v[j];
    v[j] = temp;
}
