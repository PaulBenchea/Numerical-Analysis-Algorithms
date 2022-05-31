function y = f(x)
    y = 2./(1+x.^2)
end
trapezium_k(0, 1, 0
function Qtk = trapezium_k(a, b, k)
    h = b-a;
    sum = 0;
    for i = 1:(2^(k-1))
        sum = sum + f(a + (2.*j - 1)./(2^k).*h);
    end
    if k > 0
        Qtk = (trapezium_k(a, b, k-1)) + (h./(2.^k))*sum
    else
        Qtk = (h./2)*(f(a)+f(b))
    end
    if abs(Qtk - trapezium_k(a, b, k-1)) <= e
        return;
    end
end