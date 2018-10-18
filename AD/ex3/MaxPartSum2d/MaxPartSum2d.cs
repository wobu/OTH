using System;
using System.Linq;
using System.Collections.Generic;

namespace MaxPartSum2d
{
    class MaxPartSum2d
    {
        static void Main(string[] args)
        {
            var matrix = new int[3, 3] {
                {-7, 15, 32},
                {-14, 18, -8},
                {5, -12, -24}
            };

            // TODO: why + 1 oO
            var n = matrix.GetUpperBound(0) + 1;

            Console.WriteLine("n:" + n);

            var indices = new List<int>();
            indices.AddRange(Enumerable.Range(1, n));
            var subDimensions = indices
                .SelectMany((l) => indices, (l, r) => Tuple.Create(l, r))
                .Where(t => t.Item1 != t.Item2 || (t.Item1 != 1 && t.Item1 != n))
                //.Where(t => t != Tuple.Create(1, 1) || t != Tuple.Create(n, n))
                .Distinct()
                .ToList();

            // foreach (var subD in subDimensions)
            // {
            //     Console.WriteLine(subD.ToString());
            // }

            var wholeSum = 0;
            var tmpMax = 0;

            for (var i = 0; i < n; i++)
            {
                for (var j = 0; j < n; j++)
                {
                    wholeSum += matrix[i, j];

                    foreach (var subD in subDimensions)
                    {
                        // check only possible sub matrix starting from current cell
                        if (i + subD.Item1 <= n && j + subD.Item2 <= n)
                        {
                            var subDSum = 0;

                            for (var k = 0; k < subD.Item1; k++)
                            {
                                for (var l = 0; l < subD.Item2; l++)
                                {
                                    subDSum = subDSum + matrix[i + k, j + l];
                                }
                            }

                            if (tmpMax < subDSum)
                            {
                                tmpMax = subDSum;
                            }

                            Console.WriteLine($"SubD Sum: {subDSum}");
                        }
                    }

                    if (tmpMax < matrix[i, j])
                    {
                        tmpMax = matrix[i, j];
                    }
                }
            }

            var maxPartSum = Math.Max(wholeSum, tmpMax);
            Console.WriteLine($"MaxPartSum {maxPartSum}");
        }
    }
}
