syms x
y = x
f = exp(x)
n = 5;
x0 = 0;
dc = taylor(x, f, n, x0)
x = -1:0.1:3;

function nd = ndiff(f, n, x0)
    for i=1:n
        f = diff(f);
    end
    nd = f(x0);
end
function tay = taylor(x, f, n, x0)
    sum(x) = 1
    for k = 1:n
        sum = sum + ((x-x0).^(k) * ndiff(f, k, x0))/factorial(k);
    end
    tay = sum
end
