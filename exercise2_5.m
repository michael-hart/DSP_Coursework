% Display the DFT for the following two real sinusoids
% (i) sin(2*pi*n/10) for n = 0,1,...,9
% (ii) sin(2*pi*n/10) for n = 0,1,...,10
% Why are the results so different?

x_n = cell(2,1);
x_n{1} = gensin(1,1,10,0,0,8);
x_n{2} = gensin(1,1,10,0,0,9);

N = size(x_n,1);
X = cell(N,1);
for i=1:N
    X{i} = fft(x_n{i});
end

% Instead of separate figures, we will display the plots next to each other
% for comparison
subplot(2,2,1);
plot(0:size(X{1},2)-1, abs(X{1}));
xlabel('Sample Number');
ylabel('Magnitude');

subplot(2,2,2);
plot(0:size(X{1},2)-1, angle(X{1}));
xlabel('Sample Number');
ylabel('Phase');

subplot(2,2,3);
plot(0:size(X{2},2)-1, abs(X{2}));
xlabel('Sample Number');
ylabel('Magnitude');

subplot(2,2,4);
plot(0:size(X{2},2)-1, angle(X{2}));
xlabel('Sample Number');
ylabel('Phase');

% Graphs differ significantly due to the number of samples used in the DFT.
% If complete cycles of the sinusoid was used, then there would no leakage;
% however, incomplete cycles of differing lengths are used, showing a
% significant leakage effect.
