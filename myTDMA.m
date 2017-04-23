function x = myTDMA(l,d,u,b)
% Code for Tri-Diagonal Matrix Algorithm
% To solve Ax = b using Thomas Algorithm
%    where A has tri-diagonal structure with
%    sub-diagonal, diagonal, super-diagonal represented by l, d, u
% INPUTS
%    l, d, u:   N-dimensional vectors defining tri-diagonals of A
%    b:         N-dimensional vector defining RHS of the equation
% OUTPUT is the result x
% ---------- NOTE ----------
% Matrix A is written as:
% A = [ d1  u1   0   0  ...  0   0
%       l2  d2  u2   0  ...  0   0
%        0  l3  d3  u3  ...  0   0
%       ... ... ... ... ... ... ...
%        0   0   0  ... ... lN  dN ]

n = length(d)-1;
for i = 1:n
    % Normalize by dividing with d(i)
    u(i) = u(i)/d(i);
    b(i) = b(i)/d(i);
    d(i) = 1;
    
    % Using pivot element for elimination
    alpha = l(i+1);
    l(i+1) = 0;
    d(i+1) = d(i+1) - alpha*u(i);
    b(i+1) = b(i+1) - alpha*b(i);    
end


%% Back-substitution
x = zeros(n+1,1);
x(n+1,1) = b(n+1)/d(n+1);
for i = n:-1:1
    x(i) = b(i) - u(i)*x(i+1);
end




