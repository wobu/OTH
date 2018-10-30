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

        public virtual void sort(List<int> list)
        {
            rec_sort(list, 0, list.Count - 1);
        }

        protected virtual void rec_sort(List<int> list, int f, int l)
        {
            if (f < l)
            {
                int pivot = partition(list, f, l);

                IterationDelegate(list);

                rec_sort(list, f, pivot - 1);
                rec_sort(list, pivot + 1, l);
            }
        }

        protected int partition(List<int> list, int f, int l)
        {
            int pivot = f;
            int pivotValue = list[pivot];
            int newPivotIndex = f - 1;

            for (int i = f; i <= l; i++)
            {
                if (list[i] <= pivotValue)
                {
                    newPivotIndex++;
                    swap(list, i, newPivotIndex);
                }
            }

            swap(list, pivot, newPivotIndex);

            return newPivotIndex;
        }

        static void swap(List<int> list, int a, int b)
        {
            int tmp = list[a];
            list[a] = list[b];
            list[b] = tmp;
        }
    }

    class QuickSortRandom : QuickSort
    {
        public override void sort(List<int> list)
        {
            rec_sort(list, 0, list.Count - 1);
        }

        protected override void rec_sort(List<int> list, int f, int l)
        {
            if (f < l)
            {
                int pivot = randomizedPartition(list, f, l);

                IterationDelegate(list);

                rec_sort(list, f, pivot - 1);
                rec_sort(list, pivot + 1, l);
            }
        }

        int randomizedPartition(List<int> list, int f, int l)
        {
            int pivot = new Random().Next(l - f) + f;

            swap(list, f, pivot);

            return partition(list, f, l);
        }

        static void swap(List<int> list, int a, int b)
        {
            int tmp = list[a];
            list[a] = list[b];
            list[b] = tmp;
        }
    }
}