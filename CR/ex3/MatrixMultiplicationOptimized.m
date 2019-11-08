function C = MatrixMultiplicationOptimized(A, B)
[J, N] = size(B);
[I, K] = size(A);
C = zeros([I, J]);

for i = 1:I
    for j = 1:J
        C(i, j) = A(i, :)*B(:, j);
    end
end

end