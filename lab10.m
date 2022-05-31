%a)
A = [10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10];
b = [32; 23; 33; 31];
x = linsolve(A, b)
cond(A)
%b)
b2 = [32.1; 22.9; 33.1; 30.9];
x2 = linsolve(A, b2)
input = norm(b-b2)/norm(b)
output = norm(x-x2)/norm(x)
output/input
%c
A2 = [10 7 8.1 7.2; 7.08 5.04 6 5; 8 5.98 9.89 9; 6.99 4.99 9 9.98];
x3 = linsolve(A2, b)
input = norm(A-A2)/norm(A)
output = norm(x-x3)/norm(x)
output/input