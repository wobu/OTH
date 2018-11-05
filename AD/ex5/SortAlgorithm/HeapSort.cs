using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class HeapSort : SortAlgorithm
    {
        public Action<List<int>> IterationDelegate
        {
            get; set;
        } = (list) => { };

        public void sort(List<int> list)
        {
            buildHeap(list);

            for (int i = list.Count - 1; i > 0; i--)
            {
                swap(list, 0, i);
                IterationDelegate(list);
                heapify(list, 0, i - 1, 0);
            }
        }

        void buildHeap(List<int> list)
        {
            for (int i = (list.Count - 2) / 2; i >= 0; i--)
            {
                heapify(list, 0, list.Count - 1, i);
            }
        }

        void heapify(List<int> list, int f, int l, int root)
        {
            int left = f + (root - f) * 2 + 1;
            int right = f + (root - f) * 2 + 2;
            int max = 0;

            if (left <= l && list[left] > list[root])
            {
                max = left;
            }
            else
            {
                max = root;
            }

            if (right <= l && list[right] > list[max])
            {
                max = right;
            }

            if (max != root) 
            {
                swap(list, root, max);
                heapify(list, f, l, max);
            }
        }


        static void swap(List<int> list, int a, int b)
        {
            int tmp = list[a];
            list[a] = list[b];
            list[b] = tmp;
        }
    }
}