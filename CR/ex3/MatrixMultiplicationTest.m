A = [1 2
    3 4]
B = [2 2
    2 2]

tic;
C = MatrixMultiplication(A, B)
time1 = toc

assert(isequal(A * B, C))

tic;
C = MatrixMultiplicationOptimized(A, B)
time2 = toc

assert(isequal(A * B, C))