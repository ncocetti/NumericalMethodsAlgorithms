% Nick Cocetti
% 1/26/19
% This script will plot the density of water versus the temperature of the water in degrees celcius for problem 8.
%% Variables
TF = [32:3.6:93.2];
TC = 5/9*(TF-32);
rho = 5.5289e-8*TC.^3-8.5016e-6*TC.^2+6.5622e-5*TC+0.9987;
%% Plotting
plot(TC,rho,'red')
xlabel 'Temperature in degrees Celcius'
ylabel 'Density of Water'
title 'Density of water versus Temperature'