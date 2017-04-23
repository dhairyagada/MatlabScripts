x0=10;
maxiter=50;
tolx=1e-6;

%% Computation

x=x0;
xold=x0;
for i=1:2
    f=(x^2.5)-(23*(x^1.5))-(50*x)+1150;
    df=(2.5*(x^1.5))-(34.5*(x^0.5))-50;
    x=x-f/df;
    
    err=abs(x-xold);
    xold=x;
    if(err<tolx)
        break;
    end
end