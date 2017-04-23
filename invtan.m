x=1;
i=[-2:-1:-10];
htemp=10.^i;
trueval=1/(1+x.^2);
error=zeros(length(htemp),1);
for j=1:length(htemp)
    h=htemp(j);
    fdx=(-atan(x+2*h)+4*atan(x+h)-3*atan(x))/(2*h);
    error(j)=trueval-fdx;
   
end
X=[htemp',error];
[M,I]=min(error);
disp([M,I]);
disp(htemp(I));
