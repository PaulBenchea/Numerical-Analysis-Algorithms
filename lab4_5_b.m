x = [0 1 2 3 4 5];
y = sqrt(x);
xr = 3;
neville(x, y, xr)
function res = neville(x, y, xr)
n = length(x)-1;
xx = zeros(1,n+1);
q = zeros(n+1, n+1);
for i=0:n
    xx(i+1) = x(i+1);
    q(i+1,1) = y(i+1)
end
d = zeros(1, n+1);
d(1) = xr-xx(1);
for i = 1:n
    d(i+1) = xr-xx(i+1);
    for j=1:i
        q(i+1,j+1) = (d(i+1)*q(i, j)-d(i-j+1)*q(i+1, j))/(d(i+1)-d(i-j+1))
    end
end
res = q(end, end);
end