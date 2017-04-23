%% Declarations

t0=0
y0=0
tEnd=4
h=0.5
N=(tEnd-t0)/h

%% Initializing Solutions

t=[t0:h:tEnd]
Y=zeros(N+1,1)
Y(1)=y0

%% Solving Using Eulers Explicit Method

for i=1:N
    fi=(5*t(i)^4)-(t(i)^3)+(3*t(i)^2)-(10*t(i))+1;
    Y(i+1)=Y(i)+h*fi;
end

%% Plot Results

plot(T,Y);
YTrue=(t.^5)-((t.^4)/4)+(t.^3)-(5*t.^2)+t;
er=YTrue'-Y;
[T',er]