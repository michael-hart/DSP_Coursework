figure(1);
n = -25:15;
x = zeros(1, 41);
x(1:41) = 0.5;
subplot(2,2,1);
stem(n,x);
title('Dirac Pulse Train');
xlabel('Sample Number');
ylabel('Amplitude');

n = 0:50;
x = cos(n * pi / sqrt(23));
subplot(2,2,2);
stem(n,x);
title('Cosine Signal');
xlabel('Sample Number');
ylabel('Amplitude');

n = 0:20;
x = 0.8 .^ n;
subplot(2,2,3);
stem(n,x);
title('Varying Power of 0.8');
xlabel('Sample Number');
ylabel('Amplitude');

n = -10:10;
x = exp(i * 2 * pi * n / 10);
subplot(2,2,4);
stem(n,x);
title('Real Part of Exponential Function');
xlabel('Sample Number');
ylabel('Amplitude');