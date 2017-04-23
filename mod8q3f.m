function fval=mod8q3f(t,y)
x=y(1);
v=y(2);
c=8;
k=3;
fval(1,1)=v;
fval(2,1)= -(c*v+k*x.^2);
end
