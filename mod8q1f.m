function fval=mod8q1f(t,y)
d=4.6;
k=84;
x=y(1);
s=y(2);
fval(1,1)= -(0.5*d + 2.8)*x + 40*x*s/(k+s);
fval(2,1)= d*(12-s)-160*x*s/(k+s);
end