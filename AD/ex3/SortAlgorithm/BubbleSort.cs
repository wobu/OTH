using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class BubbleSort
    {
        public static void sort(List<int> list, Action<List<int>> iterationDelegate)
        {
            {
                for (int i = 0; i < list.Count; i++)
                {
                    for (int j = (list.Count - 2); j >= i; j--)
                    {

                        if(list[j] > list[j+1])
                        {
                            int tmp = list[j];
                            list[j] = list[j+1];
                            list[j+1] = tmp;
                        }

                        iterationDelegate(list);
                    }
                }
            }
        }
    }
}