#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

/* Auszug aus "man signal"
 * If and when the function returns, if the value of sig was SIGFPE, SIGILL, or SIGSEGV or any
 * other implementation-defined value corresponding to a computational exception, the behavior is undefined.
 *
 * Wir verwenden deswegen exit(0) um das Programm zu terminieren
 */

void myhandler(int err)
{
    printf("my own errorhandler. errorcode %d\n", err);
    exit(0);
}

int main(int argc, char *argv[])
{
    int *av = (int*) 0;
//    signal(SIGSEGV, myhandler);
    *av = 42;
    return 0;
}
