[r, phi] = cart2polar(5, 6)
[x, y] = polar2cart(r, phi)
assert(x == 5 && y == 6)

% cart = cart2polarVec([5, 6])
% polar = polar2cartVec(cart{:})
% assert(polar == [5, 6])
