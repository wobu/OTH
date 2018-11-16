using System;

namespace DynamicStructures
{
    interface Tree
    {
        void Insert(int val);
        bool Contains(int val);

        void DeleteValue(int val);

        void Print();
        
        void PrintInorder();
    }
}