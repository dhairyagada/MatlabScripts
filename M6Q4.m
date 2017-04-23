% Interpolation
%% Data

x=[0,5,10,17,25,30,40]
y=[0,700,1200,2100,2500,2500,3100]

%% Using Spline

xs=[15,26];
ys=spline(x,y,xs);
[xs',ys']


%% Using Pchip

xp=xs;
yp=pchip(x,y,xp);
[xp',yp']