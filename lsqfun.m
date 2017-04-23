function fErr=lsqfun(phi)
% Data
t=[1 1.4 1.8 2.2 2.6 3.0 3.4]';
y=[1.8 2.3 2.5 2.65 2.71 2.73 2.73]';

%get parameters
a=phi(1);
n=phi(2);
%compute error
ymodel=a.*(t.^n);
fErr=y-ymodel;