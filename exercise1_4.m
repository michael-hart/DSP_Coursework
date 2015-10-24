% Assume T=1, and x(t)=d(t), employ the routine to interpolate x(t) over
% a fine grid, i.e. t=-5:0.1:5, and use the plot command to display the
% result. Compare the result of plotting x(n) directly with the result of
% plotting the interpolated signal x(t).

x_n = 1;
n = 0;
t = -5:.1:5;
T = 1;
interpolated = SincInterpolate(x_n, t, T, 0);

figure(1);
hold on;
stem(n, x_n);
plot(n, x_n);
plot(t, interpolated);
title('Interpolated Dirac Pulse');
xlabel('Time /s');
ylabel('Amplitude');
legend('Digital Signal Points', 'Linearly Interpolated Signal', ...
    'Sinc Interpolated Signal');

% The pulse points coincide with where the sinc signal is equal to 0,
% except for the point at t=1s, where it is equal to 1.

% Consider a second signal with x(0) = 3, x(1) = 2, x(2) = 0 x(3) = -2 and
% otherwise zero. Interpolate this signal over the interval t=-1:0.1:4 and
% examine the result. How does it differ from direct linear interpolation?

t = -1:.1:4;
x_n = [0 3 2 0 -2 0];
n = -1:4;
interpolated = SincInterpolate(x_n, t, T, -1);

figure(2);
hold on;
stem(n, x_n);
plot(n, x_n);
plot(t, interpolated);
title('Specified Samples');
xlabel('Time /s');
ylabel('Amplitude');
legend('Digital Signal Points', 'Linearly Interpolated Signal', ...
    'Sinc Interpolated Signal');

% Plot some values that make interpolation look like the best method

x_n = [1 4 10 6 2];
t = 1:.1:5;
interpolated = SincInterpolate(x_n, t, T, 1);

figure(3);
hold on;
stem(x_n);
plot(x_n);
plot(t, interpolated);
title('Custom Samples');
xlabel('Time /s');
ylabel('Amplitude');
legend('Digital Signal Points', 'Linearly Interpolated Signal', ...
    'Sinc Interpolated Signal');
