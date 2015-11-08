% Plot the magnitude and phase of the DFTS of the delayed discrete time
% impulse signal, for n=0,1,...,7 and l=0,1,...,7? (ensure the plots start
% with a zero index.)
% I think that means that there will be 49 samples

figure(1);
legend_vals = cell(8,1);
for l = 0:7
    points = zeros(8, 1);
    points(l+1) = 1;
    X = fft(points');
    
    % Add all data to plots
    subplot(2,1,1);hold on;
    plot(0:size(X,2)-1, abs(X));
    temp = strcat('Delayed by ', int2str(l));
    legend_vals{l+1} = ['Delayed by ' int2str(l)];
    subplot(2,1,2);hold on;
    plot(0:size(X,2)-1, angle(X));
end

% Add titles, labels and legends
subplot(2,1,1);
legend(legend_vals);
xlabel('Sample Number');
ylabel('Magnitude');
title('DFT of Dirac pulse with varying delays');
subplot(2,1,2);
legend(legend_vals);
xlabel('Sample Number');
ylabel('Phase');