using System;
using System.Collections.Generic;

namespace Hashing
{
    class Probing
    {
        static void Main(string[] args)
        {
            int m = 11;

            Func<int, int> h = x => x;
            Func<int, int> h2 = x => 1 + (x % (m - 1));

            var elements = new List<int> { 10, 22, 31, 4, 15, 28, 17, 88, 59 };

            Console.WriteLine($"linearProbing: {String.Join(',', linearProbing(m, h, elements))}");
            Console.WriteLine($"quadraticProbing: {String.Join(',', quadraticProbing(m, h, 1, 3, elements))}");
            Console.WriteLine($"doubleHashing: {String.Join(',', doubleHashing(m, h, h2, elements))}");
        }

        static int[] linearProbing(int m, Func<int, int> h, List<int> elements)
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

        static int[] quadraticProbing(int m, Func<int, int> h, int c1, int c2, List<int> elements)
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

        static int[] doubleHashing(int m, Func<int, int> h, Func<int, int> h2, List<int> elements)
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
