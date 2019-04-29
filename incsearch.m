function xb = incsearch(func,xmin,xmax,ns)
if nargin < 3
    error('at least 3 arguments required');
elseif nargin < 4
    ns = 50; 
end
nb = 0;

