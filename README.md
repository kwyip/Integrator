# Integrator 
> A List of mathematical integrators: Romberg integrator, Composite trapezoid rule, Composite midpoint rule, Composite Three-point Gaussian, Composite Simpson 1/3 rule

github: kwyip
# Romberg integrator
Code: `romberg.m`

It produces a matrix r of size (n+1,n+1). The entry of r(n+1,n+1) contains accurate solution.

# Composite Trapezoid rule over n intervals, (for just trapezoid, put n = 1)
Code: `compositetrapezoid.m`
# Composite Midpoint rule over n intervals, (for just Midpoint, put n = 1)
Code: `compositemidpoint.m`
# Composite Three-point Gaussian over n intervals (for just Three-point Gaussian, put n = 1)
Code: `composite3pointgaussian.m`
# Composite Simpson's 1/3 rule over n intervals (for just Simpson's 1/3 rule, put n = 1)
Code: `compositesimpson13.m`
# Example: testing for composite rules for integrating ![](https://latex.codecogs.com/gif.latex?e%5E%7B-x%7D%20%5Ccos%282x%29) from 0 to 2pi over 32 intervals 
Code: `exampletesting32intervals.m`

Output:
<img src="https://github.com/kwyip/Integrator/blob/master/png/output2.png">

A colored plot of the function that needs to be integrated:
<img src="https://github.com/kwyip/Integrator/blob/master/png/plotfunction.png" width="580">
