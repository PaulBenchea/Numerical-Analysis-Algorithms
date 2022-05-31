%euler
syms x
syms y
f = @(x,y) 2*x-y;
a=0;
b=1;
y0=-1;
N=10;
answ_euler = euler(a,b,N,y0,f)

%runge-kutta
answ_runge = runge(a,b,N,y0,f)
function yi = runge(a,b,N,y0,f)
    h = (b-a)/N;
    yi = y0;
    for i=0:N-1 
        ti =  a + i*h;
        k1 = h*f(ti,yi);
        k2 = h*f(ti+h/2,yi+k1/2);
        k3 = h*f(ti+h/2, yi+k2/2);
        k4 = h*f(a+(i+1)*h, yi+k3);
        yi = yi+(1/6)*(k1+2*k2+2*k3+k4);
    end
end
function yi = euler(a,b,N,y0,f)
    h = (b-a)/N;
    yi = y0;
    for i=3:N 
        ti =  a + i*h;
        yi = yi+h*f(ti,yi); 
    end
end