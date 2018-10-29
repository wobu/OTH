using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class MergeSort : SortAlgorithm
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
                var split = (f + l + 1) / 2;

                rec_sort(list, f, split - 1);
                rec_sort(list, split, l);
                merge(list, f, l, split);

                IterationDelegate(list);
            }
        }

        void merge(List<int> list, int f, int l, int split)
        {
            var n = (l - f) + 1;
            int[] tmp = new int[n];

            var f1 = f;
            var f2 = split;

            for (int i = 0; i < n; i++)
            {
                if (f1 < split)
                {
                    if (f2 <= l)
                    {
                        if (list[f1] <= list[f2])
                        {
                            tmp[i] = list[f1++];
                        }
                        else
                        {
                            tmp[i] = list[f2++];
                        }
                    }
                    else
                    {
                        tmp[i] = list[f1++];
                    }
                }
                else
                {
                    tmp[i] = list[f2++];
                }
            }

            for (int i = 0; i < n; i++)
            {
                list[f + i] = tmp[i];
            }
        }
    }
}