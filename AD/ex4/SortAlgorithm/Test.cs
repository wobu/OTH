using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class Test
    {
        static void Main(string[] args)
        {
            List<SortAlgorithm> algorithms = new List<SortAlgorithm> {
                new InsertionSortMin { IterationDelegate = PrintIterationState("InsertionSort Min") },
                new InsertionSort { IterationDelegate = PrintIterationState("InsertionSort") },
                new InsertionSortRec { IterationDelegate = PrintIterationState("InsertionSort Rec") },
                new BubbleSort { IterationDelegate = PrintIterationState("BubbleSort Up") },
                new SelectionSort { IterationDelegate = PrintIterationState("SelectionSort Max") },
                new QuickSort { IterationDelegate = PrintIterationState("QuickSort Random Pivot") },
                new MergeSort { IterationDelegate = PrintIterationState("MergeSort") },
                new MergeSortIter { IterationDelegate = PrintIterationState("MergeSort Iterative") },
                new HeapSort { IterationDelegate = PrintIterationState("HeapSort") }
            };

            foreach (var algorithm in algorithms)
            {
                algorithm.sort(new List<int> { -5, 13, -32, 7, -3, 17, 23, 12, -35, 19 });
            }
        }

        static Action<List<int>> PrintIterationState(string algorithm)
        {
            return (List<int> list) => Console.WriteLine($"[{algorithm}]\t" + String.Join(" ", list));
        }
    }

}
