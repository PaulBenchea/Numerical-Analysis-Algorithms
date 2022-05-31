x = [1 2 3 4 5];
y = [22 23 25 30 28];
xt = linspace(1, 5, 2000);

for i=1:length(xt)
    yt(i) = newtoninterpolation(x, y, xt(i));
end
suba = newtoninterpolation(x, y, 2.5)
plot(xt, yt)

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