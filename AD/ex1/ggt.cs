namespace ex1
{
    using System;
    using System.Linq;

    public class ggT
    {
        public static void Main()
        {
            var aS = Enumerable.Range(30, 11).ToList();
            var bS = Enumerable.Range(30, 11).ToList();

            foreach (var t in aS.SelectMany((l) => bS, (l, r) => Tuple.Create(l, r)))
            {
                Console.WriteLine("a = " + t.Item1 + "\tb =" + t.Item2);
                Console.WriteLine("\tggTImp:\t" + ggTImperative(t.Item1, t.Item2));
                Console.WriteLine("\tggTRec:\t" + ggTRecursive(t.Item1, t.Item2));
                Console.WriteLine("\tkgV:\t" + kgV(t.Item1, t.Item2));
                Console.WriteLine("\tMult:\t" + t.Item1 * t.Item2);
                Console.WriteLine("");
            }
        }

        static int ggTImperative(int a, int b)
        {
            int r = 0;

            do
            {
                r = a % b;
                a = b;
                b = r;
            } while (r > 0);

            return a;
        }

        static int ggTRecursive(int a, int b)
        {
            int r = a % b;

            if (r == 0)
                return b;
            else
                return ggTRecursive(b, r);
        }

        static int kgV(int a, int b)
        {
            int mult = a * b;

            for (int i = 1; i < mult; i++)
            {
                for (int j = 1; j < mult; j++)
                {
                    if (a * i == b * j)
                        return a * i;
                }
            }


            return mult;
        }
    }
}