using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class InsertionSort
    {
        public static void sort(List<int> list, Action<List<int>> iterationDelegate)
        {
            {
                for (int j = 1; j < list.Count; j++)
                {
                    var key = list[j];
                    int i = j - 1;

                    while (i >= 0 && list[i] > key)
                    {
                        list[i + 1] = list[i];
                        i -= 1;
                    }

                    list[i + 1] = key;

                    iterationDelegate(list);
                }
            }
        }
    }
}