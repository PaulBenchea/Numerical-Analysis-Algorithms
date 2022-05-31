n = 10
k = linspace(1, n, n);
A = vander(1./k);
cond(A)
for i = 1:5
    n = n+1
    k = linspace(1, n, n);
    A = vander(1./k);
    cond(A)
end