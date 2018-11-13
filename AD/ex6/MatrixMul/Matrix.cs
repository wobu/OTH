namespace MatrixMul
{
    using System;
    using System.Linq;
    using System.Collections.Generic;

    interface Matrix<T> where T : Matrix<T>
    {
        void Init();

        void Print();

        T Add(T other);

        T Substract(T other);

        T Mult(T other);

        T FastMult(T other);
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

            int[,] newMatrix = new int[M, N];

            for (int i = 0; i < M; i++)
            {
                for (int j = 0; j < N; j++)
                {
                    newMatrix[i, j] = Matrix[i, j] + other.Matrix[i, j];
                }
            }

            return new ArrayMatrix(M, N, newMatrix);
        }

        public ArrayMatrix Mult(ArrayMatrix other)
        {
            if (N != other.M)
            {
                throw new ArithmeticException($"Can't multiplay matrix [{M},{N}] with [{other.M},{other.N}].");
            }

            int[,] newMatrix = new int[M, other.N];

            for (int i = 0; i < M; i++)
            {
                for (int j = 0; j < other.N; j++)
                {
                    int cellValue = 0;

                    for (int k = 0; k < N; k++)
                    {
                        cellValue = cellValue + Matrix[i, k] * other.Matrix[k, j];
                    }

                    newMatrix[i, j] = cellValue;
                }
            }

            return new ArrayMatrix(M, other.N, newMatrix);
        }

        // only for suqare 2^i matrix
        public ArrayMatrix FastMult(ArrayMatrix other)
        {
            if (N != M && N != other.N && N != other.M)
            {
                throw new ArithmeticException($"FastMult only possible on square matrix.");
            }

            // terminate recursion
            if (N == 2)
            {
                int[,] values = new int[N, N];

                values[0, 0] = this.Matrix[0, 0] * other.Matrix[0, 0] + this.Matrix[0, 1] * other.Matrix[1, 0];
                values[0, 1] = this.Matrix[0, 0] * other.Matrix[0, 1] + this.Matrix[0, 1] * other.Matrix[1, 1];
                values[1, 0] = this.Matrix[1, 0] * other.Matrix[0, 0] + this.Matrix[1, 1] * other.Matrix[1, 0];
                values[1, 1] = this.Matrix[1, 0] * other.Matrix[0, 1] + this.Matrix[1, 1] * other.Matrix[1, 1];

                return new ArrayMatrix(N, N, values);
            }
            else
            {
                var newMatrix = new List<int>(N * N);

                var m11 = this.GetQuarterMatrix(false, false);
                var m12 = this.GetQuarterMatrix(false, true);
                var m21 = this.GetQuarterMatrix(true, false);
                var m22 = this.GetQuarterMatrix(true, true);

                var n11 = other.GetQuarterMatrix(false, false);
                var n12 = other.GetQuarterMatrix(false, true);
                var n21 = other.GetQuarterMatrix(true, false);
                var n22 = other.GetQuarterMatrix(true, true);

                // H1 := (M11 + M22)·(N11 + N22) 
                // H2 := (M21 + M22)·N11 
                // H3 := M11 ·(N12 −N22) 
                // H4 := M22 ·(N21 −N11) 
                // H5 := (M11 + M12)·N22 
                // H6 := (M21 −M11)·(N11 + N12) 
                // H7 := (M12 −M22)·(N21 + N22)
                // O11 := H1 + H4 −H5 + H7 
                // O12 := H3 + H5 
                // O21 := H2 + H4 
                // O22 := H1 −H2 + H3 + H

                var h1 = m11.Add(m22).FastMult(n11.Add(n22));
                var h2 = m21.Add(m22).FastMult(n11);
                var h3 = m11.FastMult(n12.Substract(n22));
                var h4 = m22.FastMult(n21.Substract(n11));
                var h5 = m11.Add(m12).FastMult(n22);
                var h6 = m21.Substract(m11).FastMult(n11.Add(n12));
                var h7 = m12.Substract(m22).FastMult(n21.Add(n22));

                var o11 = h1.Add(h4).Substract(h5).Add(h7);
                var o12 = h3.Add(h5);
                var o21 = h2.Add(h4);
                var o22 = h1.Substract(h2).Add(h3).Add(h6);

                newMatrix.AddRange(o11.Matrix.Cast<int>());
                newMatrix.AddRange(o12.Matrix.Cast<int>());
                newMatrix.AddRange(o21.Matrix.Cast<int>());
                newMatrix.AddRange(o22.Matrix.Cast<int>());

                return new ArrayMatrix(N, N, newMatrix);
            }
        }

        private ArrayMatrix GetQuarterMatrix(bool right, bool bottom)
        {
            var half = N / 2;

            int[,] values = new int[half, half];

            for (int i = 0; i < half; i++)
            {
                for (int j = 0; j < half; j++)
                {
                    if (right == false && bottom == false)
                    {
                        values[i, j] = this.Matrix[i, j];
                    }
                    else if (right == false && bottom == true)
                    {
                        values[i, j] = this.Matrix[i, j + half];
                    }
                    else if (right == true && bottom == false)
                    {
                        values[i, j] = this.Matrix[i + half, j];
                    }
                    else
                    {
                        values[i, j] = this.Matrix[i + half, j + half];
                    }
                }
            }

            return new ArrayMatrix(half, half, values);
        }

        public ArrayMatrix Substract(ArrayMatrix other)
        {
            if (M != other.M || N != other.N)
            {
                throw new ArithmeticException("Can't add matrix of different sizes.");
            }

            int[,] newMatrix = new int[M, N];

            for (int i = 0; i < M; i++)
            {
                for (int j = 0; j < N; j++)
                {
                    newMatrix[i, j] = Matrix[i, j] - other.Matrix[i, j];
                }
            }

            return new ArrayMatrix(M, N, newMatrix);
        }
    }
}