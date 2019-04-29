% Nick Cocetti
% 3/1/2019
% This function utilizes the false position bracket method in order to
% approximate a root of a function.
% OUTPUTS
% root: The estimated root location.
% fx: The function evaluated at the root's location.
% ea: The approximate relative error (%).
% iter: How many iterations were performed.
% INPUTS
% func: The function being evaluated.
% x_l: The lower guess.
% x_u: The upper guess.
% es: The desired relative error (default is 0.0001%).
% maxiter: The number of iterations desired (default is 200).
function [root,fx,ea,iter] = falsePosition(func,x_l,x_u,es,maxiter)

if nargin<3 % The function must have a defined function, lower x bound, and upper x bound.
    error('Minimum of 3 arguments required')
elseif nargin < 4|| isempty(es)
    es = .0001; % Default relative error
    maxiter = 200; % Default maximum iterations
elseif nargin < 5 || isempty(maxiter)
    maxiter = 200; % Default maximum iterations
elseif nargin> 5 
    error('Too many arguments.')
end
sign_test = func(x_l)*func(x_u); % A test to see if the function crosses the x axis over interval given.
if sign_test > 0 % If signtest is greater than 0, this means neither(or both) bounds yield negative values of function at that bound.
    error('No sign change detected, root unobtainable')% Therefore, the function never intersects the x axis in the interval.
end
% Initialize variables
iter = 0; x_r = 0; ea = 100;
while  (1)
    xr_old = x_r; % sets xr_old equal to x_r from previous iteration.
    x_r = x_u-((func(x_u)*(x_l-x_u))/(func(x_l)-func(x_u))); % This is the false position formula. 
    iter = iter + 1; % Counts the number of iterations
    if iter == maxiter % Limits number of iterations to user specified amount.
        break
    end
    if func(x_r) > 0&& func(x_l) > 0 || func(x_r) < 0 && func(x_l) < 0 % Replaces x_l or x_u with xr depending on sign of function at point.
        x_l = x_r; %If func(xr) sign matches func(x_l) sign then x_l will be replaced with xr.
    elseif func(x_r) > 0 && func(x_u) >0 || func (x_r) < 0 && func(x_u) < 0 
        x_u = x_r; %If func(xr) sign matches func(x_u) sign then x_u will be replaced with xr.
    end
    ea = abs((x_r-xr_old)/x_r*100); % calculates approximate relative error
    if ea <= es % limits approximate relative error to the user's specifie value.
        break
    end
end
    root = x_r; fx=func(x_r); 
end



    