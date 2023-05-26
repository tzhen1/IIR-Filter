Np = 2^14;
Rp = 1; % passband ripple
Rs = 40; % stopband ripple
Fs = 200; % sampling frequency, 1000 samples in 5 secs
Fnyq = Fs/2; % nyquist frequency
Fpass = [0.05 45]; % passband
Fstop = [0.01 50]; % stopband
Wp = Fpass/Fnyq; % normalized
Ws = Fstop/Fnyq;
% Create a butterworth filter using several methods
[N,Wn] = buttord(Wp,Ws,Rp,Rs);
[B,A] = butter(N,Wn);
[sos1,g1] = tf2sos(B,A);
[z,p,k] = butter(N,Wn);
[sos2,g2] = zp2sos(z,p,k);
% View the filters
figure
freqz(B,A,Np,Fs)
title('Non-stable tf butterworth')
figure
freqz(sos1,Np,Fs)
title('butterworth tf2sos')
figure
freqz(sos2,Np,Fs)
title('butterworth zp2sos')