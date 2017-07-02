%Ka Wa Yip (github: kwyip)
function testing_composite_32intervals
fprintf('testingforover32intervals\n');
f = @(x)exp(-x).*cos(x);
a = 0;
b = 2*pi;

fprintf('This is composite trapezoid rule over 32 intervals\n');
n = 32;
h = (b - a)/n;
trapezoid = 0.5*(f(a) + f(b));
for i = 1:n-1
    x = a + i*h;
    trapezoid = trapezoid + f(x);
end
trapezoid = trapezoid*h;
fprintf('The integral under trapezoid is %f.\n', trapezoid);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('This is composite midpoint rule over 32 intervals\n');
n = 32;
h = (b - a)/n;
midpoint = 0;
m = a + 0.5*h;
for i = 1:n
    midpoint = midpoint + h*f(m);
    m = m + h;
end
fprintf('The integral under midpoint is %f.\n', midpoint);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('This is composite three-point Gaussian over 32 intervals\n');
n = 32;
h = (b - a)/n;
t0 = -sqrt(3/5);
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

fprintf('The integral under three-point Gaussian is %f.\n', int);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('This is composite Simpson 13 rule over 32 intervals\n');
n = 32;
h=(b-a)/n; 
xi=a:h:b;
csimpson = h/3*(f(xi(1))+2*sum(f(xi(3:2:end-2)))+4*sum(f(xi(2:2:end)))+f(xi(end)));
fprintf('The integral under Simpson 13 rule is %f.\n',csimpson);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Since the ideal solution is 0.4999066278634, composite threepoint Gaussian and composite simpson 13 yield closer results.');
figure
xrange = linspace(0,2*pi,100);
fplot(f,'-',[0 2*pi])
title('Plotting the function $\e^{-x} \cos(x)$','Interpreter','latex')
xlabel('x')
ylabel('y')
