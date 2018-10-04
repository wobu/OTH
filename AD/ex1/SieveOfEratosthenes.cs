namespace ex1
{
    using System;
    using System.Linq;
    using System.Collections.Generic;

    public class SieveOfEratosthenes
    {
        public static void Main()
        {
            Console.Write("Enter the upper limit: ");
            var k = Convert.ToInt32(Console.ReadLine());

            var startTime = DateTime.UtcNow;

            var primes = new List<int>();

            var numbers = new List<int>();
            numbers.AddRange(Enumerable.Range(2, (k - 1)));

            while(numbers.Count > 0)
            {
                var number = numbers.First();
                numbers = new List<int>(numbers.Skip(1));

                if (IsPrime(number))
                {
                    primes.Add(number);
                    numbers = new List<int>(numbers.Where(n => n % number != 0));
                }
            }

            var elapsed = DateTime.UtcNow - startTime;

            Console.WriteLine(String.Join(" ", primes));
            Console.WriteLine($"Needed {elapsed.TotalMilliseconds} millis.");
        }

        public static bool IsPrime(int p)
        {
            if (p == 2)
                return true;

            for (int i = 2; i < p; i++)
            {
                if (p % i == 0)
                {
                    return false;
                }
            }

            return true;
        }
    }
}