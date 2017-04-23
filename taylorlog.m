h=0.1;
n=40;
y=log(1);
for j=2:n+1
    y=y+(h/(1+(j-1)*h));
    disp(y);
end
