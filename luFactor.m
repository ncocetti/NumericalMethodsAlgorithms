function [L,U,P] = luFactor(A)
%Nick Cocetti
%3/31/2019
%Last edit: 4/2/2019
% MECH 105
% This function decomposes a square [nxn] matrix into upper (U) and lower
% (L) triangular matricies with identity matrix P showing the pivots made.

%example:
% A =[1 2; 3 4]
%[L,U,P] = luFactor(A)
% L = [1 0; 1/3 1]
% U = [3 4; 0 2/3]
% P = [0 1; 1 0]
%% Inputs
% A: coefficient matrix
%% Outputs
%L: lower triangulat matrix
%U: upper triangular matrix
%P: pivot matrix

%%
% Check if [A] is square
[x,y] = size(A);
if x~=y
    error('Matrix must be square');
end
% Check number of arguments
if nargin ~=1 
    error ('Only one input allowed');
end 
% Begin decompozing 
[~,n] = size(A);
P = eye(n); 
L = P;
U = A;

for colm = 1:n-1 %don't have to decompose the last column of matrix A
    
    [~,maxidx1] = max(abs(U(colm:n,colm))); %Finds the maximum value of that column
    
        maxidx2 = maxidx1+colm-1; % adjusts value of maxidx for movement of searching area. 
    U([maxidx2 colm],:) = U([colm maxidx2],:);% Pivots U
    P([maxidx2 colm],:) = P([colm maxidx2],:);% Pivots P
    
     
    % elimination step
        for j = colm+1:n
            coeff = U(j,colm)/U(colm,colm); %finds eliminating coefficient
            L(j,colm) = coeff;              % Eliminating coefficient is stored in L
            U(j,:) = U(j,:)-coeff*U(colm,:);% Actual elimination takes place here
        end
        if colm > 1  
            temp=L(colm,1:colm-1);  
            L(colm,1:colm-1)=L(maxidx2,1:colm-1); %L keeps up with the row pivots of U and P here.
            L(maxidx2,1:colm-1)=temp;
        end
end
end
    
    


              
    
    
        





