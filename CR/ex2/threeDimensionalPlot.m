x = -15:0.3:15;
y = -20:0.3:20;
[X,Y] = meshgrid(x, y);
Z = cos(sqrt(X.^2+Y.^2));

%mesh(X, Y, Z)
s = surf(X, Y, Z, 'FaceAlpha', 0.5)
s.EdgeColor = 'none';
axis([-inf inf -inf inf -3 3])
%surface(X,Y,Z)
%view(3)