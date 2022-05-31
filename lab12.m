n = 100;
eps = 10.^-4;
x0 = pi/4;
newton(n, eps, x0)

function y = f(x)
    y = cos(x)
end
function y_diff = f_diff(x)
    y_diff = -sin(x)
end
function newton(n, eps, x0)
    i = 0;
    e = 1;
    xi = x0;
    while i <= n   
        y= xi-f(xi)/f_diff(xi);
        e=abs(y-xi);                           
        xi=y
        i=i+1;                                 
    end        
end
    