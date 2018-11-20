using System;

namespace DynamicStructures
{
    interface BinaryTreeElementBase<out T>
    {
        int Val { get; set; }

        T Left { get; }

        T Right { get; }

        bool IsLeaf();
    }

    class BinaryTreeElement : BinaryTreeElementBase<BinaryTreeElement>
    {
        public int Val { get; set; }
        public virtual BinaryTreeElement Left { get; set; }
        public virtual BinaryTreeElement Right { get; set; }
        public bool IsLeaf()
        {
            return Left == null && Right == null;
        }
    }
    abstract class BinaryTree<T> : Tree where T : BinaryTreeElementBase<T>
    {
        // needed as variable to have access by reference possibility...
        protected T root;
        public T Root { get { return this.root; } protected set { this.root = value; } }

        public abstract void Insert(int val);
        public abstract bool Contains(int val);

        public abstract void DeleteValue(int val);

        public void Print()
        {
            Print(Root);
            Console.Write("\n");
        }

        public void Print(T e)
        {
            if (e != null)
            {
                Print(e.Left);
                Console.Write($"{e.Val} ");
                Print(e.Right);
            }
        }

        public void PrintInorder()
        {
            PrintInorder(Root);
            Console.Write("\n");
        }

        public void PrintInorder(T e)
        {
            if (e == null)
            {
                Console.Write("n");
            }
            else
            {
                Console.Write("(");
                PrintInorder(e.Left);
                Console.Write($",{e.Val},");
                PrintInorder(e.Right);
                Console.Write(")");
            }
        }
    }
}