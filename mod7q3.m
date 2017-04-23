t0=0;
y0=0.1;
tEnd=10;

[tSol,ySol]=ode45(@(t,y) mod7q3fun(t,y),[t0 tEnd],y0);

plot(tSol,ySol)