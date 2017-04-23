function fval=mod8q4f(z,y)
u=0.5;
k=2.5;
ca=y(1);
cb=y(2);
cc=y(3);
fval(1,1)=-k*ca*cb;
fval(2,1)=-2*k*ca*cb;
fval(3,1)=k*ca*cb;
end