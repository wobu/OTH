figure(1);
clf;
clc;

load Datensatz3.mat

plot(xMeasure, yMeasure, 'r+');
N = length(xMeasure);

%A = [ones(N, 1) xMeasure'];
A = [ones(N, 1) sin(xMeasure)'];

b = yMeasure';

x = A\b;
disp("Estimate parameter")
disp(x);

disp("Fehlerquadrate")
disp(norm(A*x -b))

hold on
x_estimate = 0:.1:10;
%y_estimate = x(1) + x(2)*x_estimate;
y_estimate = x(1) + x(2)*sin(x_estimate);

plot(x_estimate, y_estimate);

A = [ones(N, 1) xMeasure' (xMeasure.^2)'];

x = A\b;
disp("Estimate parameter")
disp(x);

disp("Fehlerquadrate")
disp(norm(A*x -b))

y_estimate = x(1) + x(2)*x_estimate + x(3)*x_estimate.^2;

plot(x_estimate, y_estimate);