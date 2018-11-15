using System;
using System.Collections.Generic;

namespace DynamicStructures
{
    class Program
    {
        static void Main(string[] args)
        {
            task1_createBinaryTrees();

            // task 3 
            // H = 0 -> 1 tree
            // H = 1 -> 2 trees
            // H = 2 -> 4 trees
            // H = 3 -> 16 trees
            // n(h) = 2 * n (h-1) * n (h-2)
            // n(5) = 2 * n(4) * n(3) = 2 * 2 * n(3) * n(2) * n(3) = 2 * 2 * 16 * 4 * 16 = 2 ^ 12 = 4096

            // task 4 
            // just insert elements to AVL tree and print => sort algorithm
        }

        static void task1_createBinaryTrees()
        {
            var preorderTree = BinaryTree.CreateWithPreOrder(
                new List<int> { 1, 3, 6, 7, 8, 9 },
                new List<int> { 6, 3, 1, 8, 7, 9 });

            preorderTree.Print();

            var postOrderTree = BinaryTree.CreateWithPostOrder(
                new List<int> { 1, 3, 6, 7, 8, 9 },
                new List<int> { 1, 3, 7, 9, 8, 6});

            postOrderTree.Print();
        }
    }
}
