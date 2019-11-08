function kappaF = conditionRelative(f, x)
syms x fprime
fprime = diff(f, x)
kappaF = (fprime(x) / f(x)) * x
end