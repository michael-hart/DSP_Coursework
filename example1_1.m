n = 0:40;
x = sin(n * pi / 10);

stem(n, x);
title('Sine wave plot');
xlabel('Sample Number');
ylabel('Amplitude');
