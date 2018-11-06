using System;
using System.Collections.Generic;
using SortAlgorithm;

namespace task1
{
    class Algorithm
    {
        static void Main(string[] args)
        {
            for (int k = 1; k <= 10; k++)
            {
                var a = generateRandomList(10);
                var s = new Random().Next(-14, 14);

                // n log n
                new HeapSort().sort(a);

                var i = 0;
                var j = a.Count - 9;

                while (a[i] + a[j] != s && i < j)
                {
                    var tmp = a[i] + a[j];

                    if (tmp > s)
                    {
                        j--;
                    }
                    else if (tmp < s)
                    {
                        i++;
                    }
                }

                Console.Write($"[{String.Join(',', a)}]\ts: {s}\t");

                if (a[i] + a[j] == s)
                {
                    Console.WriteLine($"True => {a[i]} + {a[j]}");
                }
                else
                { 
                    Console.WriteLine("False");
                }
                // TODO implement algorithm
            }
        }

        static List<int> generateRandomList(int n)
        {
            var list = new List<int>(n);
            var random = new Random();

            for (int i = 0; i < n; i++)
            {
                list.Add(random.Next(-10, 10));
            }

            return list;
        }
    }
}
