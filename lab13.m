%1
x0 = 1;
x1 = 2;
e = 10.^-4;
n = 100;
secant(x0, x1, n, e)
function y = f(x)
    y = x.^3 - x.^2 - 1;
end
function res = secant(x0, x1, n, eps)
    xi = x1 - f(x1).*((x1 - x0)./(f(x1) - f(x0)));
    xi2 = x1;
    i = 2;
    while i<=n & abs(xi-xi2)>eps
        aux = xi;
        xi = xi - f(xi)*((xi - xi2)/(f(xi)-f(xi2)));
        xi2 = aux;
        i = i+1;
    end
    i
    res = xi2;
end