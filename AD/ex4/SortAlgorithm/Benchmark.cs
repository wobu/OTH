using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class Benchmark
    {
        static void Main(string[] args)
        {
            List<SortAlgorithm> algorithms = new List<SortAlgorithm> {
//                new BubbleSort(),
//                new BubbleSortUp(),
//                new InsertionSort(),
//                new InsertionSortMin(),
//                new SelectionSort(),
//                new SelectionSortMax()
                // new MergeSort(),
                // new MergeSortIter(),
                // new HeapSort(),
                new QuickSort(),
                new QuickSortRandom()
            };

            int n = 100;

            while (algorithms.Count > 0)
            {
                var list_template = generateRandomList(n);

                var algorithmsToRemove = new List<SortAlgorithm>();

                Console.WriteLine($"Template List: {String.Join(",", list_template.GetRange(0, 5))}...");

                foreach (var algorithm in algorithms)
                {
                    // create copy of list
                    var list = new List<int>(list_template);

                    var start = DateTime.UtcNow.Ticks;

                    algorithm.sort(list);

                    var duration = (DateTime.UtcNow.Ticks - start);
                    var milliseconds = duration / TimeSpan.TicksPerMillisecond;

                    Console.WriteLine($"N[{n}]\t{algorithm.ToString()}\t{milliseconds}\t[{String.Join(",", list.GetRange(0, 5))}...]");

                    // remove algorithm if it exceeds 1 min duration
                    if ((milliseconds / 1000 / 60) >= 1)
                    {
                        algorithmsToRemove.Add(algorithm);
                    }
                }

                foreach (var algorithm in algorithmsToRemove)
                {
                    algorithms.Remove(algorithm);
                }

                n = n * 10;
            }
        }

        static List<int> generateRandomList(int n)
        {
            var list = new List<int>(n);
            var random = new Random();

            for (int i = 0; i < n; i++)
            {
                list.Add(random.Next(n));
            }

            return list;
        }
    }

}
