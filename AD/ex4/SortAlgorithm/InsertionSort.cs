using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class InsertionSort
    {
        public static void sort(List<int> list, Action<List<int>> iterationDelegate)
        {
            {
                for (int j = list.Count - 2; j >= 0; j--)
                {
                    var key = list[j];
                    int i = j + 1;

                    while (i < list.Count && list[i] < key)
                    {
                        list[i - 1] = list[i];
                        i += 1;
                    }

                    list[i - 1] = key;

                    iterationDelegate(list);
                }
            }
        }
    }
}