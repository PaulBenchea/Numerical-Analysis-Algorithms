
A = [1 1 1 1; 2 3 1 5; -1 1 -5 3; 3 1 7 -2]
b = [10; 31; -2; 18]
[m,n] = size(A); 

x = zeros(m,1);
l = zeros(m,m-1);

% Triangular form

for k = 1:m-1
    % Partial pivoting
        for p = k+1:m
            if (abs(A(k,k)) < abs(A(p,k)))
                A([k p],:) = A([p k],:);
                  b([k p]) = b([p k]);
            end
        end
    
% Matrix A to triangular form
    for i = k+1:m
        l(i,k) = A(i,k)/A(k,k);
        for j = k+1:n
            A(i,j) = A(i,j)-l(i,k)*A(k,j);
        end
        b(i) = b(i)-l(i,k)*b(k);
    end
end

for k = 1:m-1
    for i = k+1:m
        A(i,k) = 0;
    end
end

x(m) = b(m)/A(m,m);

for i = m-1:-1:1
    sum = 0;
    for j = i+1:m
        sum = sum + A(i,j)*x(j);
    end
    x(i) = (b(i)- sum)/A(i,i);
end
x

