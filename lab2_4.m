h = 0.25
i = 1:1:7
a(i) = 1 + (i-1)*h
x =  1:1:7
f = sqrt(5*(x-1).^2 + 1)
n = 6
for i = 1:n+1
    d(i, 1) = f(i);
end 
for j = 2:n
    for i = 1:n-j+1
        d(i, j) = d(i+1, j-1) - d(i, j-1);
    end
end
fprintf('\n ------------Difference table ------------');
for i = 1:n+1
    fprintf('\n %.2f', a(i));
    for j = 1:n-i+1
        fprintf('\t %.4f', d(i, j));
    end
end