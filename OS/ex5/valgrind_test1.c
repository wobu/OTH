#include <stdio.h> 
#include <stdlib.h>

// valgrind detects no leak
int main(int argc, char **argv) { 
    char *p = malloc(1); 
    *p = 'a'; 
    char c = *p; 
    printf("\n  [%c ]\n" , c); 
    free(p); 
    return 0; 
}