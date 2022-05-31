a = 1;
b = 2;
n = 100;
eps = 10.^-4
bisection(a, b, n, eps)
false(a, b, n, eps)
function res = bisection(a, b, n, eps)
    i = 1
    while i <= n & (abs(a-b)/abs(a)) > eps
        c = (a + b)/2;
        if f(a)*f(c) <= 0
            b = c;
        else
            a = c;
        end
        i = i+1;
    end
    i
    res = c;
end
function res = false(a, b, n, eps)
    i = 1;
    while i <=n
        c = (f(b)*a - f(a)*b)/(f(b)-f(a));
        i = i+1;
        if f(a)*f(c) < 0
            b = c;
        else
            a = c;
        end
    end
    res = c;
end
function y = f(x)
    y = (x-2).^2 - log(x);
end
