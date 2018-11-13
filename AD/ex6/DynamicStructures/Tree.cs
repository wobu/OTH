using System;

namespace DynamicStructures
{
    class TreeElement
    {
        public int Val { get; set; }
        public TreeElement Left { get; set; }
        public TreeElement Right { get; set; }
    }
    abstract class Tree
    {
        protected TreeElement Root { get; set; }

        public abstract void Insert(int val);
        public abstract bool Contains(int val);

        public abstract void DeleteValue(int val);

        public abstract void Print();
    }
}