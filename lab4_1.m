x = [1 1.5 2 3 4];
y = [0 0.17609 0.30103 0.47712 0.60206];

a = newtoninterpolation(x, y, 2.5)
a2 = log10(2.5)
b = newtoninterpolation(x, y, 3.25)
b2 = log10(3.25)
newtonerror(x, y)

function error=newtonerror(x, y, f)
    error = 0;
    for i=10:35
        c = log10(i/10);
        e = c-newtoninterpolation(x, y, i/10);
        if e < 0
            e = -e;
        end
        if e>error
            error = e;
        end
    end
end
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