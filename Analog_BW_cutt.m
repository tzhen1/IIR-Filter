N = 4; % order
Wn = 1184; % cut off-freq
Rp = 1; % passband ripple
As = 40;% stop band atten
Wap = 1000; % passband edge, passband ripple start
Was = 5000;% stopband edge, stop band start

%[N, Wn] = buttord(Wap, Was, Rp, As, 's')
[B,A]=butter(N,Wn,'s') %s domain

freqs(B,A);
