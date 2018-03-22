#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void copy_arr1_to_arr2(float arr1[], float arr2[], size_t len1 , size_t len2);

void main(void)
{
    float arr[] = {1, 2, 3};
    float arr2[] = {4, 5, 6, 7};

    // memcpy(arr, arr2, sizeof(arr));

    // for(int i = 0; i < 3; i++) {
    //     printf("%d: %d\n", i, arr[i]);
    // }

    copy_arr1_to_arr2(arr, arr2, sizeof(arr), sizeof(arr2));

    for(int i = 0; i < 4; i++) {
        printf("%d: %f\n", i, arr[i]);
    }

    for(int i = 0; i < 3; i++) {
        printf("%d: %f\n", i, arr2[i]);
    }
}

void copy_arr1_to_arr2(float arr1[], float arr2[], size_t len1 , size_t len2)
{
    float temp1[len1 / sizeof(float)];
    float temp2[len2 / sizeof(float)];

    memcpy(temp1, arr1, len1);
    memcpy(temp2, arr2, len2);
    memcpy(arr2, temp1, len1);
    memcpy(arr1, temp2, len2);
}