using System;
using System.Collections.Generic;

namespace DynamicStructures
{
    class BinaryTree : Tree
    {
        public static BinaryTree CreateWithPreOrder(List<int> inorder, List<int> preorder)
        {
            var tree = new BinaryTree();

            tree.Insert(preorder[0]);

            for (int i = 1; i < preorder.Count; i++)
            {
                var e = new TreeElement { Val = preorder[i] };

                placeValue(tree.Root, e, inorder);
            }

            return tree;
        }

        public static void placeValue(TreeElement root, TreeElement e, List<int> inorder)
        {
            if (isLeft(inorder, root.Val, e.Val))
            {
                if (root.Left == null) root.Left = e;
                else {
                    placeValue(root.Left, e, inorder);
                }
            }
            else
            {
                if (root.Right == null) root.Right = e;
                else {
                    placeValue(root.Right, e, inorder);
                }
            }
        }

        public static bool isLeft(List<int> inorder, int root, int val)
        {
            foreach (var v in inorder)
            {
                if (v == root) return false;
                else if(v == val) return true;
            }

            return false;
        }

        public static BinaryTree CreateWithPostOrder(List<int> inorder, List<int> postorder)
        {
            var tree = new BinaryTree();

            tree.Insert(postorder[postorder.Count - 1]);

            for (int i = postorder.Count - 2; i >= 0; i--)
            {
                var e = new TreeElement { Val = postorder[i] };

                placeValue(tree.Root, e, inorder);
            }

            return tree;
        }

        public override bool Contains(int val)
        {
            // TODO not implemented

            return false;
        }

        public override void DeleteValue(int val)
        {
            // TODO not implemented
        }

        public override void Insert(int val)
        {
            var e = new TreeElement { Val = val };

            if (Root == null)
            {
                Root = e;
            }
            else
            {
                Insert(Root, e);
            }
        }

        public void Insert(TreeElement root, TreeElement e)
        {
            // TODO
        }

        public override void Print()
        {
            Print(Root);
            Console.Write("\n");
        }

        public void Print(TreeElement e)
        {
            if (e == null)
            {
                Console.Write("n");
            }
            else
            {
                Console.Write("(");
                Print(e.Left);
                Console.Write($",{e.Val},");
                Print(e.Right);
                Console.Write(")");
            }
        }
    }
}