A=[1,1,1;2,1,3;3,4,-2]
b=[4;7;9]
%% Gauss Eliminiation 
%Get Augmented Matrix
Ab=[A,b]
n=length(A)
L=eye(n)

for i=2:n
    alpha=Ab(i,1)/Ab(1,1);
    L(i,1)=alpha;
    Ab(i,:)=Ab(i,:)-alpha*Ab(1,:);
end

%With (2,2) as Pivot
i=n;
alpha=Ab(i,2)/Ab(2,2);
L(i,2)=alpha;
Ab(i,:)=Ab(i,:)-alpha*Ab(2,:);
L
U=Ab(1:n,1:n)