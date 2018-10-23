using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class SelectionSort
    {
        public static void sort(List<int> list, Action<List<int>> iterationDelegate)
        {
            {
                for (int i = 0; i < list.Count; i++)
                {
                    int min = i;

                    for (int j = i; j < list.Count; j++)
                    {

                        if (list[j] < list[min])
                        {
                            min = j;
                        }
                    }


                    int tmp = list[i];
                    list[i] = list[min];
                    list[min] = tmp;

                    iterationDelegate(list);
                }
            }
        }
    }
}