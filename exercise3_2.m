% Use stem to plot the impulse response of the following systems. For each
% impulse response, describe briefly its characteristics and express it
% analytically.
% (i)       a = [1];                            b = [1, 1, 1, 1, 1];
% (ii)      a = [1, 0.9];                       b = [1];
% (iii)     a = [1, -1.8*cos(pi/5), 0.81];  	b = [1, 0.5];

% Generate input impulse
x = zeros(1024, 1);
x(1) = 1;

% Part i
a1 = [1];
b1 = [1 1 1 1 1];
y1 = dftr(b1, a1, x);
figure(1);
stem(0:1023, y1);
% Output is five impulses from feedforward, from 0 to 4

% Part ii
a2 = [1 0.9];
b2 = [1];
y2 = dftr(b2, a2, x);
figure(2);
stem(0:1023, y2);
% Exponentially decaying sine wave with high frequency, f/fs=2

% Part iii
a3 = [1, -1.8*cos(pi/5), 0.81];
b3 = [1, 0.5];
y3 = dftr(b3, a3, x);
figure(3);
stem(0:1023, y3);
% Five pulses positive, five negative, decaying away. Don't know the
% analytical expression.