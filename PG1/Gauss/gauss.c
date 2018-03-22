#include <math.h>
#include <stdio.h>
#include <stdlib.h>


void normalizeRow(double firstValue, int rowsize, double row[]) {
    int i;

    for(i = 0; i < rowsize; i++) 
    {
        row[i] = row[i] / firstValue;
    }
}

void zeroingColumn(int column, int rowsize, double base[], double target[]) {
    int i;

    double multiplier = target[column];

    for(i = 0; i < rowsize; i++) 
    {
        target[i] = target[i] - (multiplier * base[i]);
    }
}

void printLGS(int x, int y, double lgs[x][y])
{
    int i;
    int j;

    for(i = 0; i < x; i++) 
    {
        for(j = 0; j < y; j++) 
        {
            printf("%.2f\t", lgs[i][j]);
        }

        printf("\n");
    }

    printf("\n\n");
}

void transformLGS(int x, int y, double lgs[x][y])
{
    printf("x: %d\n", x);
    printf("y: %d\n", y);

    int i;
    int j;

    // double tempLGS[][] = lgs;

    // outer loop for normalizing and applying this row to the others for zeroing
    for(i = 0; i < (x - 1); i++)
    {
        double firstValue = lgs[i][0 + i];
        
        
        printf("Normalizing row %d...\n", i);
        normalizeRow(firstValue, y, lgs[i]);

        printLGS(x, y, lgs);     

        // inner loop for zeroing
        for(j = i + 1; j < x; j++) 
        {
            printf("Zeroing row %d and its column %d...\n", j, i);
            zeroingColumn(i, y, lgs[i], lgs[j]);
    
            printLGS(x, y, lgs);
        }
    }

    printLGS(x, y, lgs);
}


int main() 
{
    double lgs[3][4] = {{3, 2, -1, 1}, {2, -2, 4, -2}, {-1, 0.5, -1, 0}};
    transformLGS(3, 4, lgs);

    return EXIT_SUCCESS;
}

