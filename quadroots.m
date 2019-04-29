%% Quadratic Root Finder
% Created on: 5 November 2018
% By: Nick Cocetti
% Description: This program determines roots from ax^2+bx+c=0 after the
% user inputs the coefficients a,b,and c.
format SHORT
a = input('What is the value of a?');
b = input('What is the value of b?');
c = input('What is the value of c?');
D= b^2-(4*a*c);
if D < 0
    fprintf('There are no real roots\n')
elseif D == 0
    root = -b/(2*a);
    fprintf('There is one root\n%.4f\n',root)
   
else
    root1 = (-b+(((b^2)-(4*a*c))^(1/2)))/(2*a);
    root2 = (-b-(((b^2)-(4*a*c))^(1/2)))/(2*a);
    fprintf('There are two roots\n')
    fprintf('Root 1 = %.4f',root1)
    fprintf(' and root 2 = %.4f\n', root2)
end




    
    
    