L = [1 0 0
    -2 1 0
    -1 3 1]
R = [2 1 3
    0 -1 2
    0 0 2]
b = [9
    -10
    21]

% vorwärts
% Lz = b
[m, n] = size(b);
z = zeros(size(b));

for i = 1:m
    z(i) = (b(i) - L(i, :) * z)
end

z

%rückwärts
% Rx = z
[m, n] = size(z);
x = zeros(size(z));

for i = m:-1:1
    x(i) = (z(i) - R(i, :) * x) / R(i,i);
end

x
    