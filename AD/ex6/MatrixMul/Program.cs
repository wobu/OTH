using System;
using System.Collections.Generic;
using System.Linq;

namespace MatrixMul
{
    class Program
    {
        static void Main(string[] args)
        {
            var random = new Random();

            var dimensions = new List<int> { 4, 2 << 2, 2 << 4, 2 << 6, 2 << 8, 2 << 9 };

            foreach (int d in dimensions)
            {
                var matrix = new ArrayMatrix(d, d, new int[d * d].ToList().Select(_ => random.Next(-9, 9)).ToList());

                var startTime = DateTime.UtcNow;

                var mult = matrix.Mult(matrix);

                var elapsed = DateTime.UtcNow - startTime;

                startTime = DateTime.UtcNow;

                var fastMult = matrix.FastMult(matrix);

                var fastMultElapsed = DateTime.UtcNow - startTime;

                if (d == 4)
                {
                    mult.Print();
                    fastMult.Print();
                }

                Console.WriteLine($"[{d}]\tMult: {elapsed}\tFastMult: {fastMultElapsed}");
            }
        }
    }
}
