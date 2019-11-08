function deltaF = relativeError(f, xs, x)
fx = f(x);
deltaF = abs((f(xs) - fx) / fx);
end