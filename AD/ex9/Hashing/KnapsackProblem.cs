using System;
using System.Collections.Generic;

namespace Hashing
{
    class Element {
        public int Value { get; set; }
        public int Weight { get; set; }

        public override string ToString()
        {
            return $"[v: {Value} w: {Weight}]";
        }
    }

    class ValuePerWeightComparer : IComparer<Element>
    {
        public int Compare(Element x, Element y)
        {
            return (y.Value / y.Weight) - (x.Value / x.Weight);
        }
    }

    class KnapsackProblem
    {
        public static void solveVariant1(List<Element> elements, int capacity)
        {
            var n = elements.Count;

            // sorts for most efficient elements (highest value per weight ration)
            // maybe O(n log n) but faster than O(n²)
            elements.Sort(new ValuePerWeightComparer());

            // Console.WriteLine(String.Join(",", elements));

            var currentWeight = 0;
            List<double> alphas = new List<double>();

            // O(n)
            foreach (Element e in elements)
            {
                if (currentWeight + e.Weight <= capacity) {
                    currentWeight += e.Weight;
                    alphas.Add(1);
                } else if (currentWeight == capacity) {
                    alphas.Add(0);
                } else {
                    double targetAlpha = (capacity - currentWeight) / (double) e.Weight;
                    currentWeight += (int) (targetAlpha * e.Weight);
                    alphas.Add(targetAlpha);
                }
            }

            for (int i = 0; i < n; i++)
            {
                Console.Write($"{alphas[i]} * {elements[i]} ");
                if (i < (n - 1)) Console.Write("+ ");
            }

            Console.WriteLine($"= {currentWeight} (W: {capacity})");
        }
    }
}
