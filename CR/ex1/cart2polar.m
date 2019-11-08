function [r, phi] = cart2polar(x, y) 
r = sqrt(x*x + y*y); % oder: r = norm([x, y]) 
phi = atan2(y, x); 
end
