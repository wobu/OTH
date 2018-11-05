using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class CountSort : SortAlgorithm
    {
        public Action<List<int>> IterationDelegate
        {
            get; set;
        } = (list) => { };

        public void sort(List<int> list)
        {
            // n
            int max = getMaxValue(list);
            int[] tmp = new int[max + 1];
            int n = list.Count;

            // k
            for (int i = 0; i <= max; i++)
            {
                tmp[i] = 0;
            }

            // n
            for (int i = 0; i < n; i++)
            {
                tmp[list[i]]++;
            }

            int j = 1;

            // n
            for (int i = 0; i < n; i++)
            {
                // k
                while (tmp[j] == 0) j++;
                list[i] = j;
                tmp[j]--;
            }

            IterationDelegate(list);
        }

        int getMaxValue(List<int> list)
        {
            int max = 0;
            foreach (int v in list)
            {
                if (v > max)
                {
                    max = v;
                }
            }

            return max;
        }
    }

    class CountSortOpt : SortAlgorithm
    {
        public Action<List<int>> IterationDelegate
        {
            get; set;
        } = (list) => { };

        public void sort(List<int> list)
        {
            // n
            var minmax = getMinMaxValue(list);
            var offset = minmax.Item1;
            var k = minmax.Item2 - offset + 1;
            int[] tmp = new int[k];
            int n = list.Count;
            var backup = new List<int>(list);

            // counting
            // n
            for (int i = 0; i < n; i++)
            {
                tmp[list[i] - offset]++;
            }

            
            var s = 0;

            // create cumulative counts
            // k
            for (int i = 0; i < k; i++)
            {
                s += tmp[i];
                tmp[i] = s;
            }

            // n
            for (int i = 0; i < n; i++)
            {
                list[tmp[backup[i] - offset]-- - 1] = backup[i];
            }

            IterationDelegate(list);

            // = k + 3n
        }

        Tuple<int, int> getMinMaxValue(List<int> list)
        {
            int max = 0;
            int? min = null;
            
            foreach (int v in list)
            {
                if (v > max)
                {
                    max = v;
                }

                if (v < min || min == null)
                {
                    min = v;
                }
            }

            return Tuple.Create<int, int>(min.Value, max);
        }
    }
}