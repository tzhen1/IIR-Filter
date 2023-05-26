%B = numberator, A = denomiator, respone H(s)
% e.g N = 1, Wn = 1, 
% B = [0 1], B(s) = 0s + 1x1 = 1, 
% A = [1 1], A(s) = 1s + 1x1 = s+1
% B / A = 1/s+1
N = 3; % order
Wn = 1; % cut off-freq

[B,A]=butter(N,Wn,'s') %s domain

freqs(B,A);
