using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class BubbleSort
    {
        public static void sort(List<int> list, Action<List<int>> iterationDelegate)
        {
            {
                for (int i = (list.Count - 1); i >= 0; i--)
                {
                    for (int j = 0; j < (list.Count - 1); j++)
                    {
                        if (list[j] > list[j + 1])
                        {
                            int tmp = list[j];
                            list[j] = list[j + 1];
                            list[j + 1] = tmp;
                        }

                        iterationDelegate(list);
                    }
                }
            }
        }
    }
}