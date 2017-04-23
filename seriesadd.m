function [S]=seriesadd(n)

den=[1:1:n];
terms=1./den;
S=sum(terms);