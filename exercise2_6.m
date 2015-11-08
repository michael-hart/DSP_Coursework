% Generate 32 samples of the signal x(n) = (0.9)^n u(n) where n=0,1,...,31
% and compute |^X(k)| using the DFT. Plot on the same axes |X(k)| and
% |^X(k)| for the range of frequencies 0<=w<2*pi. Explain the difference
% between the two graphs.

n = 0:31;
x_n = 0.9 .^ n;
Xhat = abs(fft(x_n));


% Need to calculate |X| as 1/|1-0.9e^(-jw)|
increment = 2*pi/32;
w = 0: increment : 2*pi - increment;
X = 1 ./ abs( 1 - 0.9 .* exp(-1i*w) );

figure(1);
hold on;
plot(0:31, Xhat);
plot(0:31, X);
xlabel('Sample Number');
ylabel('Magnitude');
title('Comparison of Xhat and X in magnitude only');
legend('FFT of infinite exponential', 'Formula applied to infinite exponential');

% There is very little difference between the two graphs; The version
% calculated using the formula is translated upwards by a very small
% amount. The reason for this is unknown.