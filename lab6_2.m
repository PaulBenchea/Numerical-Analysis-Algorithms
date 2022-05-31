[x, y] = ginput(5)
xx = linspace(0, 20, 100)
plot(xx, spline(x, y, xx))