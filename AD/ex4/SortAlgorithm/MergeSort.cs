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

        public virtual void sort(List<int> list)
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

        protected void merge(List<int> list, int f, int l, int split)
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

    class MergeSortIter : MergeSort
    {
        class Part
        {
            public int Start { get; set; }
            public int End { get; set; }
            public int Split { get; set; }
        }

        public override void sort(List<int> list)
        {
            var n = list.Count;

            var h = (int)Math.Ceiling(Math.Log(n, 2));

            var stack = new Stack<Part>();

            stack.Push(new Part
            {
                Start = 0,
                End = n - 1,
                Split = n / 2
            });

            // build binary tree parts
            for (int i = 1; i < h; i++)
            {
                var width = n / (int)Math.Pow(2, i);
                var prevWidth = n / (int)Math.Pow(2, i - 1);

                if (width > 1)
                {
                    for (int k = 0; k < i; k++)
                    {
                        for (int j = 0; j < (prevWidth / width); j++)
                        {
                            var start = (prevWidth * k) + (width * j);
                            // handle uneven parts
                            var end =
                                j % 2 == 1 && prevWidth % 2 == 1
                                    ? (prevWidth * k) + width * j + width
                                    : (prevWidth * k) + width * j + width - 1;

                            var split = (start + end + 1) / 2;

                            stack.Push(new Part
                            {
                                Start = start,
                                End = end,
                                Split = split
                            });
                        }
                    }
                }
            }

            while (stack.Count > 0)
            {
                var part = stack.Pop();
                merge(list, part.Start, part.End, part.Split);

                IterationDelegate(list);
            }
        }
    }
}