function midpoint = compositemidpoint(f, a, b, n)
h = (b - a)/n;
midpoint = 0;
m = a + 0.5*h;
for i = 1:n
    midpoint = midpoint + h*f(m);
    m = m + h;
end