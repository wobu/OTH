A = zeros(5,3);
v = 1:15;
A(:) = v;
disp(A);
% latex ist ein Kommando der Symbolic Toolbox und erwartet
% Datentyp class 'sym', selbst wenn keine Symbole in der Matrix
% enthalten sind
s1 = latex(sym(A))
% Symbole deklarieren
% äquivalent: x = sym('x'); y = sym('y'); z = sym('z');
syms x y z
% Funktion als class sym-Objekt
f = sin(x)+ y*x^3
s2 = latex(f)
% partielle Ableitungen ausrechnen; es wird der MAPLE-Kern aufgerufen
fx = diff(f, 'x') % wenn kein Symbol x deklariert ist
fx = diff(f, x)
fy = diff(f, y)
s3 = latex(fx)
B = [1 x x^2 x^3;
1 y y^2 y^3;
1 z z^2 z^3];
s4 = latex(sym(B))
C = A/2
latex(sym(C)) % wohl nicht das gewünschte Ergebnis
latex(sym(rats(C))) % Problem