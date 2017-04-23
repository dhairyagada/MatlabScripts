function [oddsum,funval]=vecsum(x)

n=size(x,2);

odd=[1:2:2*n];

oddsum=odd.*x;

oddsum=sum(oddsum,2);
m=1;
for i=2:n
   
    m=[m,(-1).^(i+1)];
end
m=[1:1:n].*[m];
funval=sum(m.*x,2);

disp(funval);
disp(oddsum);



end