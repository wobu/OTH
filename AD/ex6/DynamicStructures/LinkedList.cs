using System;

namespace DynamicStructures
{
    class Element
    {
        public int Val { get; set; }
        public Element Next { get; set; }
    }
    class LinkedList
    {
        private Element Head { get; set; }

        public void Append(int val)
        {
            var e = new Element { Val = val };

            if (Head == null)
            {
                Head = e;
            }
            else
            {
                var cur = Head;

                while (cur.Next != null)
                {
                    cur = cur.Next;
                }

                cur.Next = e;
            }
        }

        public void AppendList(LinkedList list)
        {
            var cur = Head;

            while (cur.Next != null)
            {
                cur = cur.Next;
            }

            cur.Next = list.Head;
        }

        public void Delete(int val)
        {
            var cur = Head;
            Element prev = null;

            while (cur != null)
            {
                if (cur.Val == val)
                {
                    if (prev == null)
                    {
                        Head = cur.Next;
                    }
                    else
                    {
                        if (cur.Next == null)
                        {
                            prev.Next = null;
                        }
                        else
                        {
                            prev.Next = cur.Next;
                        }
                    }

                    cur = cur.Next;
                }
                else
                {
                    prev = cur;
                    cur = cur.Next;
                }
            }
        }

        public void Print()
        {
            if (Head == null)
            {
                Console.WriteLine("EMPTY");
            }
            else
            {
                Console.Write("[");
                var cur = Head;

                do
                {
                    Console.Write($"{cur.Val} ");
                    cur = cur.Next;
                } while (cur != null);

                Console.WriteLine("]");
            }

        }

        public void Quicksort()
        {
            Quicksort(this);
        }

        public static void Quicksort(LinkedList list)
        {
            if (list.Head != null)
            {
                var pivot = list.Head;

                var left = new LinkedList();
                var right = new LinkedList();

                var cur = list.Head.Next;
                while (cur != null)
                {
                    if (cur.Val < pivot.Val) left.Append(cur.Val);
                    else right.Append(cur.Val);

                    cur = cur.Next;
                }

                Quicksort(left);
                Quicksort(right);

                list.Head = left.Head;
                list.Append(pivot.Val);
                list.AppendList(right);
            }
        }
    }
}