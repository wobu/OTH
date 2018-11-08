using System;

namespace DynamicStructures
{
    class Program
    {
        static void Main(string[] args)
        {
            var linkedList = new LinkedList();

            linkedList.Append(1);
            linkedList.Append(5);
            linkedList.Append(8);

            linkedList.Print();

            linkedList.Delete(5);

            linkedList.Print();


            linkedList = new LinkedList();
            linkedList.Append(-5);
            linkedList.Append(13);
            linkedList.Append(-32);
            linkedList.Append(7);
            linkedList.Append(-3);
            linkedList.Append(17);
            linkedList.Append(23);
            linkedList.Append(12);
            linkedList.Append(-35);
            linkedList.Append(19);

            linkedList.Print();

            linkedList.Quicksort();

            linkedList.Print();
        }
    }
}
