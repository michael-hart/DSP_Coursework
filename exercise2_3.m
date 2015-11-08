% Plot the magnitude and phase of the DFTS of the delayed discrete time
% impulse signal, for n=0,1,...,7 and l=0,1,...,7? (ensure the plots start
% with a zero index.)
% I think that means that there will be 49 samples

figure(1);
legend_vals = [];
for l = 0:7
    points = cat(1, zeros(l,1), ones(8,1))';
    X = fft(points);
    subplot(2,1,1);hold on;
    plot(0:size(X,2)-1, abs(X));
    temp = strcat('Delayed by ', int2str(l));
    legend_vals(l+1) = strcat('Delayed by ', int2str(l));
    subplot(2,1,2);hold on;
    plot(0:size(X,2)-1, angle(X));
end

subplot(2,1,1);
mag_legends = strcat('Delayed  by ', int2str(0:7));
legend(legend_vals);
xlabel('Sample Number');
ylabel('Magnitude');
title('DFT of pulse train with varying delays');
subplot(2,1,2);
legend(legend_vals);
xlabel('Sample Number');
ylabel('Phase');