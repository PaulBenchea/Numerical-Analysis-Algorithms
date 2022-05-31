n = 20
x = -1:0.1:1
ChebyshevPol(n, x)
function y = ChebyshevPol(n, x)
  m = length(x)
  if n == 0
    y = ones(1, m)
  else 
    if n == 1
      y = x
    else 
      y = 2*x.*ChebyshevPol(n-1, x)-ChebyshevPol(n-2, x)
      plot(x, y) 
      hold on
    end
  end
end
