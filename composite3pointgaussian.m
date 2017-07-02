%Ka Wa Yip (github: kwyip)
function int = composite3pointgaussian(f, a, b, n) %n = 1 for simple 3pointgaussian.
h = (b - a)/n;
t0 = -sqrt(3/5);  %look at tables for composite3pointgaussian at https://en.wikipedia.org/wiki/Gaussian_quadrature
t1 = 0;
t2 = +sqrt(3/5);
A0 = 5/9;
A1 = 8/9;
A2 = 5/9;

ai = a;
int = 0.0;
for k = 1:n
    bi = ai + h;
    inti = 0.0;
    inti = A0 * f(0.5*(bi - ai)*t0 + 0.5*(bi + ai)) +...
        A1 * f(0.5*(bi - ai)*t1 + 0.5*(bi + ai)) +...
        A2 * f(0.5*(bi - ai)*t2 + 0.5*(bi + ai));
    inti = 0.5*(bi - ai)*inti;
    ai = bi; %reset ai for next loop
    int = int + inti;
end
