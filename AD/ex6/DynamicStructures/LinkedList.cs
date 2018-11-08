using System;

namespace DynamicStructures
{
    class LinkedList : List<LinkedList>
    {
        public override int Get(int n)
        {
            Element cur = null;

            for (int i = 0; i <= n; i++)
            {
                cur = i == 0 ? Head : cur.Next;

                if (cur == null)
                {
                    throw new IndexOutOfRangeException(i.ToString());
                }
            }

            return cur.Val;
        }

        public override int Count()
        {
            if (Head == null)
            {
                return 0;
            }
            else
            {
                var cur = Head;
                var count = 0;

                while (cur != null)
                {
                    count++;
                    cur = cur.Next;
                }

                return count;
            }
        }

        public override void Append(int val)
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

        public override void Delete(int val)
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

        public override void Print()
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