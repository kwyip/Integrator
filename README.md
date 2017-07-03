# Integrator 
github: kwyip
# Romberg integrator
Code: romberg.m
It produces a matrix r of size (n+1,n+1). The entry of r(n+1,n+1) contains accurate solution.

# Composite Trapezoid rule over n intervals, (for just trapezoid, put n = 1)
Code: compositetrapezoid.m
# Composite Midpoint rule over n intervals, (for just Midpoint, put n = 1)
Code: compositemidpoint.m
# Composite Three-point Gaussian over n intervals (for just Three-point Gaussian, put n = 1)
Code: composite3pointgaussian.m
# Composite Simpson's 1/3 rule over n intervals (for just Simpson's 1/3 rule, put n = 1)
Code: compositesimpson13.m
# Example: testing for composite rules for integrating ![](https://latex.codecogs.com/gif.latex?e%5E%7B-x%7D%20%5Ccos%282x%29) from 0 to 2pi over 32 intervals 
Code: exampletesting32intervals.m


Output:

testingforover32intervals

This is composite trapezoid rule over 32 intervals

The integral under trapezoid is 0.202856.

This is composite midpoint rule over 32 intervals

The integral under midpoint is 0.198003.

This is composite three-point Gaussian over 32 intervals

The integral under three-point Gaussian is 0.199627.

This is composite Simpson 13 rule over 32 intervals

The integral under Simpson 13 rule is 0.199534.

The ideal solution is 0.199627.
