% Plot DFT of constant time signal

x_n = ones(8,1);
X = fft(x_n);

subplot(2,1,1);
plot(0:7, abs(X));
xlabel('Sample Number');
ylabel('Magnitude');
title('DFT of constant magnitude time signal');

subplot(2,1,2);
plot(0:7, angle(X));
xlabel('Sample Number');
ylabel('Phase');