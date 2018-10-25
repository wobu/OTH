using System;
using System.Collections.Generic;

namespace SortAlgorithm
{
    class Test
    {
        static void Main(string[] args)
        {
            InsertionSort.sort(
                new List<int> { -5, 13, -32, 7, -3, 17, 23, 12, -35, 19 },
                PrintIterationState("InsertionSort Min")
            );
            
            BubbleSort.sort(
                new List<int> { -5, 13, -32, 7, -3, 17, 23, 12, -35, 19 },
                PrintIterationState("BubbleSort Up")
            );

            SelectionSort.sort(
                new List<int> { -5, 13, -32, 7, -3, 17, 23, 12, -35, 19 },
                PrintIterationState("SelectionSort Max")
            );

            QuickSort.sort(
                new List<int> { -5, 13, -32, 7, -3, 17, 23, 12, -35, 19 },
                PrintIterationState("QuickSort Random Pivot")
            );
        }

        static Action<List<int>> PrintIterationState(string algorithm)
        {
            return (List<int> list) => Console.WriteLine($"[{algorithm}]\t" + String.Join(" ", list));
        }
    }

}
