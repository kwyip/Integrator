%n subinterval
%Ka Wa Yip (github:kwyip)
function trapezoid = compositetrapezoid(f, a, b, n)
h = (b - a)/n;
trapezoid = 0.5*(f(a) + f(b));
for i = 1:n-1
    x = a + i*h;
    trapezoid = trapezoid + f(x);
end
trapezoid = trapezoid*h;
