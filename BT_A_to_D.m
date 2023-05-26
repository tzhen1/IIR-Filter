T = 0.01;
Fs = 1/T;
NUM = [10]; 
DEN = [1 10]; % 1s + 10
% converts s-domain trans func 
% by numerator num and denominator den 
% to a discrete equivalent.
[NUMd,DENd] = bilinear(NUM,DEN,Fs)