using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class QuickSort : SortAlgorithm
    {
        public Action<List<int>> IterationDelegate
        {
            get; set;
        } = (list) => { };

        public void sort(List<int> list)
        {
            rec_sort(list, 0, list.Count - 1);
        }

        void rec_sort(List<int> list, int f, int l)
        {
            if (f < l)
            {
                int pivot = partition(list, f, l);

                IterationDelegate(list);

                rec_sort(list, f, pivot - 1);
                rec_sort(list, pivot + 1, l);
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