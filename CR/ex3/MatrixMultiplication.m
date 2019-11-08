function C = MatrixMultiplication(A, B)
[J, N] = size(B);
[I, K] = size(A);
C = zeros([I, J]);

for i = 1:I
    for j = 1:J
        sum = 0;
        for k = 1:K
            sum = sum + A(i, k) * B(k, j);
        end
        C(i, j) = sum;
    end
end

end