% Linear Regression

x=[0:1:11];
x=x';
y=[288.2; 281.7; 275.2; 268.7; 262.2; 255.7; 249.2; 242.7; 236.2; 229.7; 223.3; 216.8];
N=length(x);
%% Calculate Linear Regression And Plot

A=[N,sum(x);sum(x),sum(x.*x)]
B=[sum(y);sum(x.*y)]
phi=A\B

plot(x,y,'bs',[0 12],phi(1)+phi(2)*[0 12],'-r')