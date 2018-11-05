using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class Test
    {
        static void Main(string[] args)
        {
            List<SortAlgorithm> algorithms = new List<SortAlgorithm> {
                // new MergeSort { IterationDelegate = PrintIterationState("MergeSort") },
                // new HeapSort { IterationDelegate = PrintIterationState("HeapSort") },
                new CountSort { IterationDelegate = PrintIterationState("CountSort") },
                new CountSortOpt { IterationDelegate = PrintIterationState("CountSort Opt") }
            };

            foreach (var algorithm in algorithms)
            {
                algorithm.sort(new List<int> { 5, 13, 32, 7, 3, 17, 23, 12, 35, 19 });
            }
        }

        static Action<List<int>> PrintIterationState(string algorithm)
        {
            return (List<int> list) => Console.WriteLine($"[{algorithm}]\t" + String.Join(" ", list));
        }
    }

}
