using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class SelectionSort : SortAlgorithm
    {
        public Action<List<int>> IterationDelegate
        {
            get; set;
        } = (list) => { };
        public void sort(List<int> list)
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

                IterationDelegate(list);
            }
        }
    }
}