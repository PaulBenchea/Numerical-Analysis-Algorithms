x = 1955
xx = [1930 1940 1950 1960 1970 1980];
yy = [123203 131669 150697 179323 203212 226505];
rezultat = BarycentricInterpolation(x, xx, yy);
rezultat 
x = 1995
rezultat =BarycentricInterpolation(x, xx, yy);
rezultat
function y = BarycentricInterpolation(x, xx, yy)
    n = length(xx);
    usum = 0; lsum = 0;
    
    for i = 1:n
        xi = xx(i);
        ai = BarycentricCoeff(xx, xi, i);
        usum = usum + (yy(i) * ai)/(x- xx(i));
        lsum = lsum + ai/(x-xx(i));
    end
    y = usum/lsum;
end
function ai = BarycentricCoeff(xx, xi, i)
    n = length(xx);
    prod = 1;
    for k = 1:n
        if ~(k==i)
            prod = prod*(xi-xx(k)) ;
        end
    end
    ai = 1/prod;
end