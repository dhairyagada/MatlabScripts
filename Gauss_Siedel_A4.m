%Gauss Siedel Method
clc
A=[10,-2,-1,-1;
    -2,10,-1,-1;
    -1,-1,10,-2;
    -1,-1,-2,10]
b=[3;15;27;-9]

Ab=[A,b]

n=4;
x=zeros(n,1);
err=zeros(n,1)
%% GS Iterations

for iter=1:8
    for k=1:n
        xold=x(k);
        num=Ab(k,end)-Ab(k,1:k-1)*x(1:k-1)-Ab(k,k+1:n)*x(k+1:n);
        x(k)=num/Ab(k,k)
        err(k)=abs(x(k)-xold);
    end
    disp(['Iter ',num2str(iter),'; Error =',num2str(max(err))])
end