namespace ex2.task3
{
    using System;
    using System.Linq;
    using System.Collections.Generic;

    public class Task3
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("FunctionRecursive(2, 0): " + FunctionRecursive(2, 0));
            Console.WriteLine("FunctionRecursive(2, 3): " + FunctionRecursive(2, 3));
            Console.WriteLine("FunctionRecursive(0, 3): " + FunctionRecursive(0, 3));
            Console.WriteLine("FunctionRecursive(3, 2): " + FunctionRecursive(3, 2));

            Console.WriteLine("FunctionIterative(2, 0): " + FunctionIterative(2, 0));
            Console.WriteLine("FunctionIterative(2, 3): " + FunctionIterative(2, 3));
            Console.WriteLine("FunctionIterative(0, 3): " + FunctionIterative(0, 3));
            Console.WriteLine("FunctionIterative(3, 2): " + FunctionIterative(3, 2));
        }

        public static int FunctionRecursive(int n, int m)
        {
            if (n == 0)
            {
                return m + 1;
            }
            else if (m == 0 && n >= 1)
            {
                return FunctionRecursive(n - 1, 1);
            }
            else
            {
                return FunctionRecursive(n - 1, FunctionRecursive(n, m - 1));
            }
        }

        public static int FunctionIterative(int n, int m)
        {
            var n_stack = new Stack<int>();
            var local_m = m;
            var local_n = 0;

            n_stack.Push(n);

            while (n_stack.Count > 0)
            {
                local_n = n_stack.Pop();

                if (local_n == 0)
                {
                    local_m = local_m + 1;
                }
                else 
                {
                    if (local_m == 0)
                    {
                        n_stack.Push(local_n - 1);
                        local_m = 1;
                    }
                    else
                    {
                        n_stack.Push(local_n - 1);
                        n_stack.Push(local_n);
                        local_m = local_m - 1;
                    }
                }
            }

            return local_m;
        }
    }
}