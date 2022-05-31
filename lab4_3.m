x = linspace(0, 6, 50)
f = exp(sin(x))
xx = linspace(0, 6, 13)

plot(x, f)
hold on
for i=1:length(xx)
    yy(i) = newtoninterpolation(x, f, xx(i))
end
plot(xx, yy)
function yi=newtoninterpolation(x, y, xi)
    n = length(x);
    b = zeros(n,n);
    b(:,1) = y(:);
    for j=2:n
        for i=1:n-j+1
            b(i,j)=(b(i+1,j-1)-b(i, j-1))/(x(i+j-1)-x(i));
        end
    end
    xt = 1; yi=b(1,1);
    for j=1:n-1
        xt=xt*(xi-x(j));
        yi=yi+b(1, j+1)*xt;
    end
end