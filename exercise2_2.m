% Function is e^(-jn/3)
% n is 0:15
n = 0:15;
x_n = exp(-1i .* n ./ 3);
X = fft(x_n);

figure(1);
subplot(2,1,1);
plot(n,abs(x_n));
title('Magnitude and Phase of sampled time signal');
ylabel('Magnitude of x(n)');
xlabel('Sample number');
subplot(2,1,2);
plot(n,angle(x_n));
ylabel('Phase of x(n)');
xlabel('Sample number');

figure(2);
subplot(2,1,1);
plot(n,abs(X));
title('Magnitude and Phase of Fourier transformed signal');
ylabel('Magnitude of X');
xlabel('Sample number');
subplot(2,1,2);
plot(n,angle(X));
ylabel('Phase of X');
xlabel('Sample number');