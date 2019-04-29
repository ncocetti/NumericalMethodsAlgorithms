% Nick Cocetti
% 1/26/19
% This script will plot the standard normal probability density function.
%% Variables
z = [-5:.005:5];
%% Equation
fz = (1/(sqrt(2*pi)))*exp(-(z).^2)/2;
%% Plot
plot(z,fz, 'red')
xlabel('z');
ylabel('frequency');
title 'Standard Normal Probability Density Curve'

