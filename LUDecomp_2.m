clc
A=[8,-2,3,4;2,5,-7,1;7,-1,0,2;9,7,-3,2]
b=[1;8;-5;7]
Ab=[A,b];
n=length(A);
L=eye(n);

for i=2:4
    alpha=Ab(i,1)/Ab(1,1);
    L(i,1)=alpha;
    Ab(i,:)=Ab(i,:)-alpha*Ab(1,:);
end
for i=3:4
    alpha=Ab(i,2)/Ab(2,2);
    L(i,2)=alpha;
    Ab(i,:)=Ab(i,:)-alpha*Ab(2,:);
end
i=4;
alpha=Ab(i,3)/Ab(3,3);
L(i,3)=alpha;
Ab(i,:)=Ab(i,:)-alpha*Ab(3,:);
L
U=Ab(1:n,1:n)
LU=L*U
Flg=LU-A