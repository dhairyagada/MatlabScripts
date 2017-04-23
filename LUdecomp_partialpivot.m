%Solve Ax=b using Gauss Eliminiation and partial pivoting

A=[1,1,1;2,1,3;3,4,-2]
b=[4;7;9]
%% Gauss Eliminiation 
%Get Augmented Matrix
Ab=[A,b]
n=length(A)

%With A(1,1) as pivot element 
%Row exchange to ensure that A(1,1) is the largest element in the row

col1=Ab(:,1)
[dummy,idx]=max(col1)
dummy=Ab(1,:);
Ab(1,:)=Ab(3,:);
Ab(3,:)=dummy

for i=2:3
    alpha=Ab(i,1)/Ab(1,1);
    Ab(i,:)=Ab(i,:)-alpha*Ab(1,:);
end

%With (2,2) as Pivot
i=3;
 alpha=Ab(i,2)/Ab(2,2);
    Ab(i,:)=Ab(i,:)-alpha*Ab(2,:);
