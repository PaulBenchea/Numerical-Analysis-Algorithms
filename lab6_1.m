x = [0 pi/2 pi 3*pi/2 2*pi];
f = sin(x);
xx = linspace(0, 2*pi, 100);
ff = sin(xx);

plot(xx, ff, "green")
hold on
plot(xx, spline(x, f, xx))

spline(x, f, pi/4)



