%% DECLARATIONS

t0=0
I0=0
tEnd=2
h=0.25
N=(tEnd-t0)/h

%% Initializing Solutions

t=[t0:h:tEnd]
I=zeros(N+1,1)
I(1)=y0

%% RK Midpoint Method

for i=1:N
    k1=2.5-1.25*I(i);
    tnew=t(i)+(h/2);
    Inew=I(i)+(h*k1/2);
    k2=2.5-1.25*Inew;
    I(i+1)=I(i)+(h*k2);
end

%%Error and Plot
I
plot(t,I)

Itrue=2*(1-exp(-1.25*t))
error=Itrue-I'