phi0=[1;2];
phi=lsqnonlin(@(p) lsqfun(p),phi0);