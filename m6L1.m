%Introduction To Linear Regression 
x=[0.8;  1.4;  2.7;  3.8;  4.8;  4.9 ]
y=[0.69; 1.0;  2.02; 2.39; 2.34; 2.83]

N=length(x);

%%Calculate Linear regression and Plot

A=[N,sum(x);sum(x),sum(x.*x)];
