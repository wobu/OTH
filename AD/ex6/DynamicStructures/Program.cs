using System;

namespace DynamicStructures
{
    class Program
    {
        static void Main(string[] args)
        {
            // task1();
            // task2();
            task3();
        }

        static void task3()
        {
            var binarySearchTree = new BinarySearchTree();

            binarySearchTree.Insert(6);
            binarySearchTree.Insert(8);
            binarySearchTree.Insert(7);
            binarySearchTree.Insert(9);
            binarySearchTree.Insert(4);
            binarySearchTree.Insert(5);
            binarySearchTree.Insert(2);
            binarySearchTree.Insert(3);
            binarySearchTree.Insert(1);

            binarySearchTree.Print();

            // Delete Leaf
            binarySearchTree.DeleteValue(9);
            binarySearchTree.Print();
            // Delete entry with 1 follower
            binarySearchTree.DeleteValue(8);
            binarySearchTree.Print();
            // Delete with 2 Follower
            binarySearchTree.DeleteValue(2);
            binarySearchTree.Print();
        }

        static void task1()
        {
            var linkedList = new LinkedList();

            linkedList.Append(1);
            linkedList.Append(5);
            linkedList.Append(8);

            Console.WriteLine("Count: " + linkedList.Count());
            Console.WriteLine("Get(1): " + linkedList.Get(1));

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
        static void task2()
        {
            var ringLinkedList = new RingLinkedList();

            ringLinkedList.Append(1);
            ringLinkedList.Append(5);
            ringLinkedList.Append(8);

            Console.WriteLine("Count: " + ringLinkedList.Count());
            Console.WriteLine("Get(1): " + ringLinkedList.Get(1));

            ringLinkedList.Print();

            ringLinkedList.Delete(5);
            ringLinkedList.Print();

            ringLinkedList.Delete(1);
            ringLinkedList.Print();

            ringLinkedList = new RingLinkedList();

            for (int i = 1; i <= 49; i++)
            {
                ringLinkedList.Append(i);
            }

            ringLinkedList.Print();

            var random = new Random();

            // lottery
            Console.WriteLine("\nStart Lottery!");

            for (int i = 0; i < 6; i++)
            {
                var val = ringLinkedList.Get(random.Next(0, ringLinkedList.Count() - 1));

                Console.WriteLine(val);

                ringLinkedList.Delete(val);
            }
        }
    }
}
