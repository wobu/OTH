#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void quicksort(int arr[], int begin, int end);

void main(void)
{
    int arr[] = {6, 7, 4, 5, 2, 3, 1};

    int size;

    size = sizeof(arr) / sizeof(arr[0]);

    for (int i = 0; i < size; i++)
    {
        printf("%d: %d\n", i, arr[i]);
    }

    quicksort(arr, 0, size - 1);

    for (int i = 0; i < size; i++)
    {
        printf("%d: %d\n", i, arr[i]);
    }
}

void swap(void **pa, void **pb)
{
    void *hilf = *pa;
    *pa = *pb;
    *pb = hilf;
}

void quicksort(int *arr, int begin, int end)
{
    if (end - begin > 1)
    {
        int pivot = (begin + end) / 2;

        printf("Pivot i: %d, value: %d\n", pivot, *(arr + pivot));

        int left = begin;
        int right = end;

        do
        {
            while(1)
            {   
                if (*(arr + left) >= *(arr + pivot))
                {
                    break;
                }

                left++;
            }

            while(1)
            {   
                if (*(arr + right) <= *(arr + pivot))
                {
                    break;
                }

                right--;
            }

            // if (*(arr + right) >= *(arr + pivot))
            // {
            //     right--;
            // }

            if (*(arr + left) > *(arr + pivot) && *(arr + right) < *(arr + pivot))
            {
                printf("Swap left: %d with right %d\n", *(arr + left), *(arr + right));
                // void *l_pointer = (arr + left);
                // void *r_pointer = (arr + right);


                // swap(&l_pointer, &r_pointer);

                int hilf = *(arr + left);
                *(arr + left) = *(arr + right);
                *(arr + right) = hilf;
            }
        } while (left < pivot && right > pivot);

        if (*(arr + left) > *(arr + pivot))
        {
            printf("Swap left: %d with pivot %d\n", *(arr + left), *(arr + pivot));
            // void *l_pointer = (arr + left);
            // void *r_pointer = (arr + right);


            // swap(&l_pointer, &r_pointer);

            int hilf = *(arr + left);
            *(arr + left) = *(arr + pivot);
            *(arr + pivot) = hilf;
        } else if (*(arr + right) < *(arr + pivot))
        {
            printf("Swap pivot: %d with right %d\n", *(arr + pivot), *(arr + right));
            // void *l_pointer = (arr + left);
            // void *r_pointer = (arr + right);


            // swap(&l_pointer, &r_pointer);

            int hilf = *(arr + pivot);
            *(arr + pivot) = *(arr + right);
            *(arr + right) = hilf;
        }

        quicksort(arr, begin, pivot);
        quicksort(arr, pivot, end);
    }
}