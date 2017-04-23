%% DECLARATIONS
clc
t0=0;
I0=0;
tEnd=2;
hvec=[0.1,0.05,0.01];
xdata=0;
ydata=0;
for j=1:3
    h=hvec(j);
N=(tEnd-t0)./h;

%% Initializing Solutions

t=[t0:h:tEnd];
I=zeros(N+1,1);
I(1)=y0;

%% RK Midpoint Method

for i=1:N
    k1=2.5-1.25*I(i);
    tnew=t(i)+(h/2);
    Inew=I(i)+(h*k1/2);
    k2=2.5-1.25*Inew;
    tnew=t(i)+(3*h/4);
    Inew=I(i)+(3*h*k2/4);
    k3=2.5-1.25*Inew;
    tnew=t(i)+h;
    Inew=I(i)+(2*h*k1/9)+(h*k2/3)+(4*h*k3/9);
    k4=2.5-1.25*Inew;
    I(i+1)=I(i)+h*((7*k1/24)+(k2/4)+(k3/3)+(k4/8));
    xdata=[xdata,h];
   % ydata=[ydata,I(i)];
    %I(i+1)=I(i)+(h*k2);
end
     xdata=[xdata,h];
%%Error and Plot
I;
plot(t,I);

Itrue=2*(1-exp(-1.25*t));
error=Itrue-I';
ydata=[ydata,error];
[t',I,Itrue',error'];
error(N+1);
xd=h
yd=error(N+1)
end