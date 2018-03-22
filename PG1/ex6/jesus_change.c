
#include <stdio.h>

void tausche(void **pa, void **pb);

void main(void)
{
    int a = 1, b = 2;
    int *ap = &a;
    int *bp = &b;

    tausche((void **)&ap, (void **)&bp);

    printf("a = %d, b= %d\n", *ap, *bp);
}

void tausche(void **pa, void **pb)
{
    void *hilf = *pa;
    *pa = *pb;
    *pb = hilf;
}