using System;
using System.Collections.Generic;

namespace SkipList
{
    class SkipListElement
    {
        public int Height { get; set; }
        public int Value { get; set; }
        public SkipListElement Next { get; set; }
        public SkipListElement Down { get; set; }

        public override string ToString()
        {
            return $"{Value}";
        }
    }

    class First
    {
        public SkipListElement Next { get; set; }
        public First Down { get; set; }
    }

    class SkipList
    {
        private SkipListElement l0 = null;

        private SkipListElement first = null;

        private int listHeight = 0;

        private Random random = new Random();

        public SkipList()
        {
            l0 = new SkipListElement();
            first = l0;
        }

        public void Insert(int val)
        {
            var height = GetRandomHeight();

            var e = new SkipListElement { Height = 0, Value = val };

            if (first.Next == null)
            {
                first.Next = e;
            }
            else
            {
                while (e.Height <= this.listHeight)
                {
                    var upperElement = new SkipListElement
                    {
                        Height = e.Height + 1,
                        Value = e.Value,
                        Down = e
                    };

                    e = upperElement;
                }

                TraverseSkipList(first, e);
            }

            while (e.Height <= height)
            {
                var upperElement = new SkipListElement
                {
                    Height = e.Height + 1,
                    Value = e.Value,
                    Down = e
                };

                e = upperElement;
            }

            // increase list height to element height if lower
            int heightDiff = height - listHeight;
            while (heightDiff > 0)
            {
                var newFirst = new SkipListElement { Down = this.first, Next = e };
                this.first = newFirst;
                e = e.Down;
                heightDiff--;
            }

            this.listHeight = Math.Max(height, listHeight);
        }

        private void TraverseSkipList(SkipListElement anchor, SkipListElement val)
        {
            SkipListElement position = FindPosition(anchor, val.Value);
            
            if (position.Down != null)
            {
                TraverseSkipList(position.Down, val.Down);
            }

            UpdateReferences(position, val);
        }

        private void UpdateReferences(SkipListElement o, SkipListElement next)
        {
            next.Next = o.Next;
            o.Next = next;
        }

        private SkipListElement FindPosition(SkipListElement element, int val)
        {
            while (element != null)
            {
                if (element.Next != null && element.Next.Value < val)
                {
                    element = element.Next;
                }
                else
                {
                    return element;
                }
            }

            return element;
        }

        private int GetRandomHeight()
        {
            int h = 0;

            while (random.Next(0, 2) == 1)
            {
                h++;
            }

            return h;
        }

        public void Delete(int val)
        {

        }

        public bool Search(int val)
        {
            return false;
        }

        public void Print()
        {
            Console.Write("[");

            var e = l0.Next;

            while (e != null)
            {
                Console.Write($"{e.Value}");

                e = e.Next;

                if (e != null)
                {
                    Console.Write(", ");
                }
            }

            Console.Write($"](h: {this.listHeight})\n");
        }
    }
}
