using System;

namespace DynamicStructures
{
    class RingLinkedList : List<RingLinkedList>
    {
        public override int Get(int n)
        {
            Element cur = null;

            for (int i = 0; i <= n; i++)
            {
                cur = i == 0 ? Head : cur.Next;
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

                do
                {
                    count++;
                    cur = cur.Next;
                } while (cur != Head);

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

                while (cur.Next != Head)
                {
                    cur = cur.Next;
                }

                cur.Next = e;
            }

            e.Next = Head;
        }

        public override void Delete(int val)
        {
            if (Head != null)
            {
                var cur = Head.Next;
                Element prev = Head;

                while (cur != Head)
                {
                    if (cur.Val == val)
                    {
                        if (cur.Next == Head)
                        {
                            prev.Next = Head;
                        }
                        else
                        {
                            prev.Next = cur.Next;
                        }

                        cur = cur.Next;
                    }
                    else
                    {
                        prev = cur;
                        cur = cur.Next;
                    }
                }

                if (cur == Head && cur.Val == val)
                {
                    prev.Next = cur.Next;
                    Head = cur.Next;
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
                } while (cur != Head);

                Console.WriteLine("]");
            }

        }
    }
}