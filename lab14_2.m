syms x1
syms x2
f1 = @(x1,x2) x1^3+3*x2^2-21;
f2 = @(x1,x2) x1^2+2*x2+2;
x0 = [1; -1];
epsilon = 10^(-6);
J = @(x1,x2) [3*x1^2, 6*x2; 2*x1, 2];
xp = x0;
for p=1:1000
    J2 = inv(J(xp(1,1),xp(2,1)));
    xp_1 = xp - J2*[f1(xp(1,1),xp(2,1));f2(xp(1,1),xp(2,1))];
    if norm(xp_1-xp) <= epsilon
        val = xp;
        break
    end
    xp = xp_1;
end
answ_newton = xp