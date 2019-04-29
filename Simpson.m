function [I] = Simpson(x,y)
% input two vectors of equal lengths, x and y, where y values are a
% function of x. Simpson(x,y) will return an approximation to the summation
% of values between x1 and xi. 
%nargin checkin'
if nargin ~= 2
    error('Must have exactly 2 inputs of x and y vectors.');
end
% Make sure x and y are same length
if length(y)~=length(x)
    error('x and y must be same length')
end
% Error check for equal spacing
p =zeros(1,length(x)-1);
for n = 1:length(x)-1
    p(n) = x(n+1)-x(n);
    if n>1
        if p(n) ~= p(n-1)
            error('spacing between independent values must be equal')
        end
    end
end

% implementation of Simon's 1/3 rule.
k = zeros(1,length(x)-2);
for n = 1:2:length(x)-2
    i = (y(n)+4*y(n+1)+y(n+2));   
    k(n) = i;
end
I = p(1)/3*sum(k);
% Implement trapazoid rule for last interval if necessary.
if rem(length(x)-1,2)~=0
    fprintf('Warning: Trapezoidal rule applied for odd remaining interval')
    I_T = (x(length(x))-x(length(x)-1))*((y(length(y))+y(length(y)-1))/2);
    I = I + I_T;
end
end


