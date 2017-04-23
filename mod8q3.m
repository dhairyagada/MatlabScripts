y0=[1.5;0.4];
tspan=[0:5]
[tsol,ysol]=ode45(@(t,y) mod8q3f(t,y),tspan,y0)
plot(tsol,ysol(:,1))