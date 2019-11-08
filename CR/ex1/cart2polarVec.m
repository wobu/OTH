function [r, phi] = cart2polarVec(v) 
r = sqrt(v(1)*v(1) + v(2)*v(2)); % oder: r = norm(v); 
phi = atan2(v(2), v(1)); 
end
