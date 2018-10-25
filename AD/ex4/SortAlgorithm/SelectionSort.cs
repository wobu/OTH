using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class SelectionSort
    {
        public static void sort(List<int> list, Action<List<int>> iterationDelegate)
        {
            for (int i = list.Count - 1; i >= 0; i--)
            {
                int max = i;

                for (int j = i - 1; j >= 0; j--)
                {
                    if (list[j] > list[max])
                    {
                        max = j;
                    }
                }

                int tmp = list[i];
                list[i] = list[max];
                list[max] = tmp;

                iterationDelegate(list);
            }
        }
    }
}