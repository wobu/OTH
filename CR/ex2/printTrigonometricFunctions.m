function printTrigonometricFunctions()
x = linspace(-2*pi,pi);
%x = -2*pi:0.1:pi
SIN = sin(x);
COS = cos(x);
TAN = tan(x);

figure(1);
clf
%plot(x, SIN, "r", x, COS, "g", x, TAN, "b", 'LineWidth', 2);
%plot('LineWidth', 2);
hold on;
plotCol2(x, SIN, "r");
plotCol2(x, COS, "g");
plotCol2(x, TAN, "b");
axis([-2*pi, pi, -1.5, 1.5]);
legend("sin", "cos", "tan");
shg

end

function plotCol2(x, y, col)
plot(x, y, col, 'LineWidth', 2);
end