f(1) = 13;
f(2) = 15;
f(3) = 20;
f(4) = 14;
f(5) = 15;
f(6) = 13;
f(7) = 10;
for i = 1:7
    x(i) = i;
end
m = 7;
a = calca(m, f, x);
b = calcb(m, f, x);
p = phi(8, a, b);
e = calce(x, f, m, a, b);
for i = 1:8
    p2(i) = phi(i, a, b);
end
x(8) = 8;
plot(x, p2)
hold on
plot(x, f, '+')
function a = calca(m, f, x)
    a = 0;
    sum1 = 0;
    sum2 = 0;
    sum3 = 0;
    sum4 = 0;
    sum5 = 0;
    for i = 1:m
        sum1 = sum1 + x(i)*f(i);
        sum2 = sum2 + x(i);
        sum3 = sum3 + f(i);
        sum4 = sum4 + x(i).^2;
    end
    sum5 = sum2;
    a = ((m+1)*sum1 - sum2*sum3)/((m+1)*sum4 - (sum5.^2));
end
function b = calcb(m, f, x)
    b = 0;
    sum1 = 0;
    sum2 = 0;
    sum3 = 0;
    sum4 = 0;
    sum5 = 0;
    sum6 = 0;
    for i = 1:m
        sum1 = sum1 + x(i).^2;
        sum2 = sum2 + f(i);
        sum3 = sum3 + x(i)*f(i);
        sum4 = sum4 + x(i);
        sum5 = sum5 + x(i).^2;
        sum6 = sum6 + x(i);
    end
    b = (sum1*sum2 - sum3*sum4)/((m+1)*sum5 - (sum6.^2));
end
function p = phi(x, a, b)
    p = a*x + b;
end
function e = calce(x, f, m, a, b)
    e= 0;
    for i = 1:m
        p = phi(i, a, b);
        e = e + (f(i) - p).^2;
    end

end