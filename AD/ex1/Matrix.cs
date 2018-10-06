namespace ex1
{
    using System;
    using System.Linq;
    using System.Collections.Generic;

    interface Matrix<T> where T : Matrix<T>
    {
        void Init();

        void Print();

        void Input();

        T Add(T other);

        T Mult(T other);
    }

    class ArrayMatrix : Matrix<ArrayMatrix>
    {
        protected int M
        {
            get; private set;
        }

        protected int N
        {
            get; private set;
        }

        protected int[,] Matrix
        {
            get; private set;
        }

        public ArrayMatrix(int m, int n)
        {
            M = m;
            N = n;
            Matrix = new int[m, n];
            Init();
        }

        public ArrayMatrix(int m, int n, List<int> numbers)
        {
            M = m;
            N = n;
            Matrix = new int[m, n];

            for (int i = 0; i < numbers.Count; i++)
            {
                var mi = i / N;
                var ni = i % N;

                Matrix[mi, ni] = numbers[i];
            }
        }

        private ArrayMatrix(int m, int n, int[,] matrix)
        {
            M = m;
            N = n;
            Matrix = matrix;
        }

        public void Init()
        {
            for (int i = 0; i < M; i++)
            {
                for (int j = 0; j < N; j++)
                {
                    Matrix[i, j] = 0;
                }
            }
        }

        public void Input()
        {
            var numbers = new List<int>();

            do
            {
                if (numbers.Count != M * N)
                {
                    Console.WriteLine($"Please enter {M}x{N} (= {M * N}) numbers (in one line):");
                }

                var input = Console.ReadLine();

                numbers = input.Split(" ").Select(e => Convert.ToInt32(e)).ToList();
            } while (numbers.Count != M * N);

            for (int i = 0; i < numbers.Count; i++)
            {
                var mi = i / N;
                var ni = i % N;

                Matrix[mi, ni] = numbers[i];
            }
        }

        public void Print()
        {
            for (int i = 0; i < M; i++)
            {
                for (int j = 0; j < N; j++)
                {
                    Console.Write($"{Matrix[i, j]} ");
                }

                Console.WriteLine();
            }        
        }

        public ArrayMatrix Add(ArrayMatrix other)
        {
            if (M != other.M || N != other.N)
            {
                throw new ArithmeticException("Can't add matrix of different sizes.");
            }

            var startTime = DateTime.UtcNow;
            var addCount = 0;

            int[,] newMatrix = new int[M, N];

            for (int i = 0; i < M; i++)
            {
                for (int j = 0; j < N; j++)
                {
                    newMatrix[i, j] = Matrix[i, j] + other.Matrix[i, j];
                    addCount++;
                }
            }

            var elapsed = DateTime.UtcNow - startTime;

            Console.WriteLine($"Additions {addCount}");
            Console.WriteLine($"Needed {elapsed.TotalMilliseconds} millis.");

            return new ArrayMatrix(M, N, newMatrix);
        }

        public ArrayMatrix Mult(ArrayMatrix other)
        {
            if (N != other.M)
            {
                throw new ArithmeticException($"Can't multiplay matrix [{M},{N}] with [{other.M},{other.N}].");
            }

            var startTime = DateTime.UtcNow;
            var addCount = 0;
            var multCount = 0;

            int[,] newMatrix = new int[M, other.N];

            for (int i = 0; i < M; i++)
            {
                for (int j = 0; j < other.N; j++)
                {
                    int cellValue = 0;

                    for (int k = 0; k < N; k++)
                    {
                        cellValue = cellValue + Matrix[i, k] * other.Matrix[k, j];
                        addCount++;
                        multCount++;
                    }

                    newMatrix[i, j] = cellValue;
                }
            }


            var elapsed = DateTime.UtcNow - startTime;

            Console.WriteLine($"Additions {addCount}\tMultiplications {multCount}");
            Console.WriteLine($"Needed {elapsed.TotalMilliseconds} millis.");

            return new ArrayMatrix(M, other.N, newMatrix);
        }
    }

    class MatrixTest
    {
        public static void Main()
        {
            var random = new Random();

            Console.WriteLine("Enter first Matrix [4x5]");
            var matrix1 = new ArrayMatrix(4, 5);
            matrix1.Input();
            matrix1.Print();
            Console.WriteLine("");

            Console.WriteLine("Random second Matrix [4x5]");
            var matrix2 = new ArrayMatrix(4, 5, new int[4 * 5].ToList().Select(_ => random.Next(-9, 9)).ToList());
            matrix2.Print();
            Console.WriteLine("");

            Console.WriteLine("Addition of first and second Matrix [4x5]");
            var add = matrix1.Add(matrix2);
            add.Print();
            Console.WriteLine("");

            Console.WriteLine("Random third Matrix [5x2]");
            var matrix3 = new ArrayMatrix(5, 2, new int[5 * 2].ToList().Select(_ => random.Next(-9, 9)).ToList());
            matrix3.Print();
            Console.WriteLine("");

            Console.WriteLine("Multiplication of first and third Matrix");
            var mult = matrix1.Mult(matrix3);
            mult.Print();
            Console.WriteLine("");

            Console.ReadLine();
        }
    }

    class MatrixBenchmark
    {
        public static void Main()
        {
            var random = new Random();

            var n = 100;
            var benchmarkTimesInMinutes = new List<int> { 1, 2, 5, 10 };

            var matrix = new ArrayMatrix(n, n, new int[n * n].ToList().Select(_ => random.Next(-9, 9)).ToList());


            var startTime = DateTime.UtcNow;

            var add = matrix.Add(matrix);

            var elapsed = DateTime.UtcNow - startTime;

            // operation count for matrix additions = n * n
            Console.WriteLine("Benchmark results for addition");
            foreach (int b in benchmarkTimesInMinutes)
            {
                var operations = n * n;

                var result = Math.Sqrt(TimeSpan.FromMinutes(b).Divide(TimeSpan.FromMilliseconds(elapsed.TotalMilliseconds)) * operations);
                Console.WriteLine($"{b} Min:\t n = {result}");
            }

            startTime = DateTime.UtcNow;

            var mult = matrix.Mult(matrix);

            elapsed = DateTime.UtcNow - startTime;

            // operation count for matrix multiplicatoins = additions: n³ + multiplictions: n³
            Console.WriteLine("Benchmark results for multiplication");
            foreach (int b in benchmarkTimesInMinutes)
            {
                // ommitted factor 2
                var operations = n * n * n;

                var result = Math.Pow((TimeSpan.FromMinutes(b).Divide(TimeSpan.FromMilliseconds(elapsed.TotalMilliseconds)) * operations), 0.3333);
                Console.WriteLine($"{b} Min:\t n = {result}");
            }


            Console.ReadLine();
        }
    }
}