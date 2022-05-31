a = 1;
b = 1.5;
c = f((a+b)./2);
rectangle(1, 1.5)
xx = linspace(1, 1.5, 100);
yy = f(xx);
plot(xx, yy)
hold on
plot(a, f(a), 'or')
hold on
plot(b, f(b), 'or')
hold on
plot(a, c, 'or')
hold on 
plot(b, c, 'or')
function y = f(x)
    y = exp(-x.^2);
end
function r = rectangle(a, b)
    r = (b-a).*f((a+b)./2);
end