x = 1

relativeError(@f1, x + 0.01, x)
relativeError(@f1, x + 0.001, x)

KrelF1 = ((2 * x) / f1(x)) * x * 0.01
KrelF1 = ((2 * x) / f1(x)) * x * 0.002
relativeError(@f2, x + 0.01, x)
relativeError(@f2, x + 0.001, x)

relativeError(@f3, x + 0.01, x)
relativeError(@f3, x + 0.001, x)

relativeError(@f4, x + 0.01, x)
relativeError(@f4, x + 0.001, x)

relativeError(@f5, x + 0.01, x)
relativeError(@f5, x + 0.001, x)