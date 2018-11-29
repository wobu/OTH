using System;
using System.Collections.Generic;

namespace Hashing
{
    class Program
    {
        static void Main(string[] args)
        {
            int m = 11;

            Func<int, int> h = x => x;
            Func<int, int> h2 = x => 1 + (x % (m - 1));

            var elements = new List<int> { 10, 22, 31, 4, 15, 28, 17, 88, 59 };

            Console.WriteLine($"linearProbing: {String.Join(',', Probing.linear(m, h, elements))}");
            Console.WriteLine($"quadraticProbing: {String.Join(',', Probing.quadratic(m, h, 1, 3, elements))}");
            Console.WriteLine($"doubleHashing: {String.Join(',', Probing.doubleHashing(m, h, h2, elements))}");


            // knapsack problem variant 1
            KnapsackProblem.solveVariant1(
                new List<Element> {
                    new Element { Value = 10, Weight = 5 },
                    new Element { Value = 12, Weight = 6 },
                    new Element { Value = 4, Weight = 3 } },
                10);
        }
    }
}
