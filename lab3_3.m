x = 0:1/2:10
y = fun(x)
yy = BarycentricInterpolation(x, y, xx);
plot(x, y, 'or', xx, yy)
function y = fun(x)
    y = (1+cos(pi.*x))/(1+x)
end
function yy = BarycentricInterpolation(x, y, xx)
    x = x(:); y = y(:)
    xx = xx(:);
    n = length(xx);
    ai = BarycentricCoeff(x);
    for i = 1:n
        res = ai'./(xx(i)-x);
        yy(i) = res'*y/sum(res);
    end
end
function ai = BarycentricCoeff(x)
    n = length(x);
    x = x(:);
    for k = 1:n
        ai(k) = 1/prod(x(k)-x([1:k-1, k+1:n]));
    end
end