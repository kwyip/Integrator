function csimpson = compositesimpson13(f,a,b,n) 
h=(b-a)/n; 
xi=a:h:b;
csimpson = h/3*(f(xi(1))+2*sum(f(xi(3:2:end-2)))+4*sum(f(xi(2:2:end)))+f(xi(end)));
