clc
n=9;
t0(1,1)=80;
t0(2:n,1)=80;
t0(n+1,1)=40;
t0(n+2,1)=30;
y0=t0(2:n);
tspan=[0:5];
[tsol,ysol]=ode45(@(t,y) mod8q2f(t,y),tspan,y0)
plot(tsol,ysol)