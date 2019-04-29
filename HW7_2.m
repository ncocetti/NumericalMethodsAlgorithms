% Nick Cocetti
% 2/10/19
% Homework 7 Problem 2
% The smallest positive real number used in matlab. 
x = 1;
count = 1;
values= [1:1076];
while x>0
    x= x/2;
    count = count + 1;
    values(count)=x;
end
fprintf('The smallest positive value is %.10e.\n',(values(length(values)-1)))