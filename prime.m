%% Prime Numbers Matlab
% Created by: Nick Cocetti
% Due: 11/26/18
% Purpose:
% User input prime(m,n) will return a vector of all prime numbers between m,n and including m,n if they are prime. 
% Example: user inputs prime(3,18). Program will return vector ans = 3 5 7 11 13 17 

function [pr] = prime(m,n)
if n <= 0
    error('The input argument must be a positive integer.');
end
if m <= 0
    error('The input argument must be a positive integer.');
end
if n <= m
    error('The value of n must be a value larger than m.');   
end
if rem(m,1) ~= 0
    error('The input m must be a whole number.');
end
if rem(n,1) ~= 0
    error('The input n must be a whole number.');
end
g = 1;
for l = (m:1:n)
    for j = 2:l-1
        if rem(l,j) == 0
            break
        elseif j == l-1;
            pr(g)=l;
            g=g+1;
        end
    end
end

end
