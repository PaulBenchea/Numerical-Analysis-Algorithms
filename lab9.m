repeated_rectangle(1, 1.5, 150)
repeated_rectangle(1, 1.5, 500)
function y = f(x)
    y = exp(-x.^2);
end
function r = repeated_rectangle(a, b, n)
    r = (b-a)./n;
    sum = 0;
    for i=1:n
        sum = sum + f(i);
    end
    r = r*sum;
end