function fval=mod8q2f(t,y)
ta=30;
alpha=2;
beta=0.02;
n=length(y)+1;
t(1)=80;
t(2:n)=y;
t(n+1)=40;
t(n+2)=30;
h=1/n;
for i=2:n
dTdt(i)=(alpha*(t(i+1)-2*t(i)+t(i-1))/h.^2)-beta*(t(i)-ta);
end
fval=dTdt(2:n);
fval=fval';
end