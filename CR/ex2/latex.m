A = zeros(5,3);
v = 1:15;
A(:) = v;
disp(A);
% latex ist ein Kommando der Symbolic Toolbox und erwartet
% Datentyp class ’sym’, selbst wenn keine Symbole in der Matrix
% enthalten sind
s1 = latex(sym(A))

% Symbole deklarieren
% äquivalent: x = sym(’x’); y = sym(’y’); z = sym(’z’);
syms x y z

% Funktion als class sym-Objekt
f = sin(x)+ y*x^3
s2 = latex(f)

% partielle Ableitungen ausrechnen; es wird der MAPLE-Kern aufgerufen
fx = diff(f, 'x')       

% wenn kein Symbol x deklariert ist
fx = diff(f, x)
fy = diff(f, y)
s3 = latex(fx)

B = [1 x x^2 x^3;
    1 y y^2 y^3;
    1 z z^2 z^3];
s4 = latex(sym(B))
C = A/2
latex(sym(C))           % MATLAB 2012: wohl nicht das gewünschte Ergebnis
% latex(sym(rats(C)))   % Problem: string to sym
% latex(sym(rat(C)))    % Problem: rat to sym

set(groot, 'defaultAxesTickLabelInterpreter','latex');
set(groot, 'defaultLegendInterpreter','latex');
figure(1);
clfx = 0:0.01:2*pi;
x = clfx;
f1 = sqrt(x);
f2 = 3/2*sin(10*pi*x);
plot(x,f1,x,f2);
str = '$$ \frac 3 2\sin(10 \pi x_1) $$';
text(2.25,2,str,'Interpreter','latex','FontSize',20)
legend('$\sqrt{x_1}$', '$\frac 3 2\sin(10 \pi x_1)$')
% einfache Indizes funktionieren auch so
xlabel('x_1');
ylabel('x_2 ');
shg
