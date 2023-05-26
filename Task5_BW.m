%no % = print
Fs = 10000;
T = 1/Fs;
Rp = 0.5;
Fdp = 1000;
As = 20;
Fds = 3000;
Wdp = 2*pi*Fdp;
Wds= 2*pi*Fds;
Wap = (2/T)*tan((T/2)*Wdp);
Was = (2/T)*tan((T/2)*Wds);

% converts s-domain trans func 
[N, Wn] = buttord(Wap, Was, Rp, As, 's');
[B,A]=butter(N,Wn,'s'); % B = numerator
% B(1)
% B(2)
% B(3)
% B(4)
% A(1)
% A(2)
% A(3)
% A(4)

NUM = [B]; 
DEN = [A]; 

[NUMd,DENd] = bilinear(NUM,DEN,Fs)
freqz(NUMd,DENd);

