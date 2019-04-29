% Nick Cocetti
% 1/26/19
% This script will plot the charge on a capacitor as a function of time.
%% Variables
t = [0:.008:0.8];
q0 = 10;
R = 60;
L = 9;
C = 0.00005;
%% Equation
qt = q0*exp((-R*t)/(2*L)).*cos(sqrt((1/L*C)-((R/(2*L)))^2)*t);
%% Plot
plot(t,qt, 'red');
xlabel 'Time (s)'
ylabel 'Capacitor Charge'
title 'Capacitor Charge over Time'