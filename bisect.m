function [root,fx,ea,iter] = bisect(func,x_l,x_u,es,maxiter)
if nargin<3
    error('Must have at least 3 input arguments!');
end
signtest = func(x_l)*func(x_u);
if signtest>0 
    error ('no sign change')
end
if nargin <4 || isempty(es)
    es = .0001;
end
if nargin < 5 || isempty(maxiter)
    maxiter = 200;
end
iter = 0; xr= x_l; ea = 100;
while(1)
    xrold = xr;
    xr = (x_l+x_u)/2;
    iter = iter +1;
    if xr ~= 0
        ea = abs((xr-xrold)/xr)*100;
    end
    signtest = func(x_l)*func(xr);
    if signtest < 0
        x_u = xr;
    elseif signtest > 0 
        x_l = xr;
    else
        ea = 0;
    end
    if ea <= es || iter>= maxiter
        break
    end
    root = xr; fx =func(xr);
end

end
