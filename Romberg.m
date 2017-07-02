%input function f, a and b lower and upper intervals, larger the n higher the accuracy
function r = Romberg(f, a, b, n) %Romberg
%r - Romberg table storing the computed integrals.
r = zeros(n+1, n+1);
h = b - a;
r(1,1) = (h/2) * (f(a) + f(b));
for i = 2:n+1
    h = h/2;
    sum = 0;
    for k = 1 : 2 : (2^(i-1) - 1)
        sum = sum + f(a + k*h);
    end
    r(i,1) = 0.5*r(i-1,1) + sum*h;
    for j = 2:i
        r(i,j) = r(i,j-1) + (r(i,j-1) - r(i-1,j-1))/(4^(j-1) - 1);
    end
end
