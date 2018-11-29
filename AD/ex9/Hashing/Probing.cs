using System;
using System.Collections.Generic;

namespace Hashing
{
    class Probing
    {
        public static int[] linear(int m, Func<int, int> h, List<int> elements)
        {
            var table = new int[m];

            foreach (int e in elements)
            {
                for (int i = 0; i < m; i++)
                {
                    var s = (h(e) + i) % m;

                    if (table[s] == 0)
                    {
                        table[s] = e;
                        break;
                    }
                }
            }

            return table;
        }

        public static int[] quadratic(int m, Func<int, int> h, int c1, int c2, List<int> elements)
        {
            var table = new int[m];

            foreach (int e in elements)
            {
                for (int i = 0; i < m; i++)
                {
                    var s = (h(e) + i * c1 + i ^ 2 * c2) % m;

                    if (table[s] == 0)
                    {
                        table[s] = e;
                        break;
                    }
                }
            }

            return table;
        }

        public static int[] doubleHashing(int m, Func<int, int> h, Func<int, int> h2, List<int> elements)
        {
            var table = new int[m];

            foreach (int e in elements)
            {
                for (int i = 0; i < m; i++)
                {
                    var s = (h(e) + i * h2(e)) % m;

                    if (table[s] == 0)
                    {
                        table[s] = e;
                        break;
                    }
                }
            }

            return table;
        }
    }
}
