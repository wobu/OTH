using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class QuickSort
    {
        public static void sort(List<int> list, Action<List<int>> iterationDelegate)
        {
            rec_sort(list, 0, list.Count - 1, iterationDelegate);
        }

        static void rec_sort(List<int> list, int f, int l, Action<List<int>> iterationDelegate)
        {
            if (f < l)
            {
                int pivot = partition(list, f, l);

                iterationDelegate(list);

                rec_sort(list, f, pivot - 1, iterationDelegate);
                rec_sort(list, pivot + 1, l, iterationDelegate);
            }
        }

        static int partition(List<int> list, int f, int l)
        {
            int pivot = new Random().Next(l - f) + f;
            int pivotValue = list[pivot];

            int left = f;
            int right = l;

            while (left < right)
            {
                while (list[left] < pivotValue && left < l)
                {
                    left++;
                }

                while (list[right] > pivotValue && right > f)
                {
                    right--;
                }

                if (left < right)
                {
                    swap(list, left, right);
                }
            }

            swap(list, left, pivot);
            return pivot;
        }

        static void swap(List<int> list, int a, int b)
        {
            int tmp = list[a];
            list[a] = list[b];
            list[b] = tmp;
        }
    }
}