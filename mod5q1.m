function fval=mod5q1(X)

x=X(1);
y=X(2);

%% Defining Functions

fval(1,1)=(x^2)+(x*y)-y-10;
fval(2,1)=(y^2)+(x*y)-x-5;