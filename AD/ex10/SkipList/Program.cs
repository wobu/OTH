using System;

namespace SkipList
{
    class Program
    {
        static void Main(string[] args)
        {
            var random = new Random();

            var list = new SkipList();
            list.Insert(49);
            list.Print();

            for (int i = 0; i < 5; i++)
            {
                var val = random.Next(0, 99);
                Console.WriteLine($"Inserting {val}...");
                list.Insert(val);
                list.Print();
            }

            Console.WriteLine("List contains '8': " + list.Search(8));
            Console.WriteLine("List contains '49': " + list.Search(49));
            list.Delete(49);
            Console.WriteLine("List contains '49': " + list.Search(49));

            list.Print();
        }
    }
}
