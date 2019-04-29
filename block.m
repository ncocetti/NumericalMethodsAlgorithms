mu = .55;
m = 25;
g = 9.81;
F = 150;
syms f(theta)
f(theta) = ((mu*m*g)/(cos(theta)*mu*sin(theta)))-F;
theta = falsePosition(f(theta),6.1,6.3)