q=[230,425,620,780,910,970,985,990,930,860,765,610,410]
% h=[2:2:12]
% intans=zeros(6,1)
% j=1
% for i=1:i+3:11
%     h(j)
%     q(i)
%     intans(j)=(h(j)/3)*(q(i)+4*q(i+1)+q(i+2))
%     j=j+1
% end
% Intfin=sum(intans)*0.4*5

Intans=(6/3)*(q(1)+4*q(7)+q(13))
Intans=0.4*5*Intans