using System;

namespace DynamicStructures
{
    class Element
    {
        public int Val { get; set; }
        public Element Next { get; set; }
    }
    abstract class List<T>
    {
        protected Element Head { get; set; }

        public abstract int Get(int n);
        public abstract int Count();

        public abstract void Append(int val);
 
        public abstract void Delete(int val);

        public abstract void Print();
    }
}