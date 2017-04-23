function [coshVal] = maclaurinCosh(x,n)
    % Template file for Assignment-2
    % Compute approximation of cosh(x) using MacLaurin
    %     Series upto the n-th order term (x^n/n!)
    % ----- DO NOT EDIT THIS PART OF THE CODE -----   
    numerator = x.^[1:n];
    denom = cumprod(1:n);
    vec = [1, numerator./denom];
    
    % ----- DO NOT EDIT ANYTHING ABOVE THIS LINE -----    
    % PLEASE USE "vec" for your further calculations
    % ---- YOU MAY START EDITING THE FUNCTION NOW ----
    
    
end