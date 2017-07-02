%n = 1 for just midpoint for 1 interval
%Ka Wa Yip (github:kwyip)
function midpoint = compositemidpoint(f, a, b, n)
h = (b - a)/n;
midpoint = 0;
m = a + 0.5*h;
for i = 1:n
    midpoint = midpoint + h*f(m);
    m = m + h;
end
