using System;

namespace DynamicStructures
{
    class BinaryTreeElement
    {
        public int Val { get; set; }
        public BinaryTreeElement Left { get; set; }
        public BinaryTreeElement Right { get; set; }
    }
    abstract class BinaryTree : Tree
    {
        protected BinaryTreeElement Root { get; set; }

        public abstract void Insert(int val);
        public abstract bool Contains(int val);

        public abstract void DeleteValue(int val);

        public virtual void Print()
        {
            Print(Root);
            Console.Write("\n");
        }

        public void Print(BinaryTreeElement e)
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