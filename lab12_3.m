newton(6, 0, 1)
function y = f(x)
    y = x - 0.8*sin(x)-(2*pi/10);
end
function y_diff = f_diff(x)
    y_diff = 1 - (4*cos(x))/5;
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
    