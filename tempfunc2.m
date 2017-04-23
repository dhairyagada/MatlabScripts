function ferr=tempfunc2(p)
a0=p(1);
a1=p(2);
xdata=[0:1:11]';
ydata=[288.2; 281.7; 275.2; 268.7; 262.2; 255.7; 249.2; 242.7; 236.2; 229.7; 223.3; 216.8];
ymodel=a0+xdata.*a1;
ferr=abs(ydata-ymodel);
end