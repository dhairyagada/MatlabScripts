function fval = rocketFun(t)
    % Assignment-5, Problem-4
    % Use this function with fzero to find the time
    % when a rocket reaches velocity of 750 m/s
    
    % Constants
    u = 1800;
    m = 160000;
    q = 2600;
    g = 9.81;
    
    % At the command line, you should be able to type:
    %      fzero(@(t) rocketFun(t),10,50)
    % to get the desired result
    % ----- YOU MAY START EDITING NOW -----
    
    fval=(u*log(m/(m-q*t)))-9.81*t-750;
    
end