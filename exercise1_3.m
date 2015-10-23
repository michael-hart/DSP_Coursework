% Create an array of groups of 4 sine waves
sine_sets = [ 150 300 450 600; 7400 7550 7700 7850; 24150 24300 24450 24600 ];

for i=1:size(sine_sets,1)
    % Calculate corresponding time series
    n = 0:1/8000:100/8000;
    figure(i);
    
    for j=1:4
        subplot(4,1,j);
        hold on;
        samples = gensin(1, sine_sets(i,j), 8000, 0, 0, 100);
        stem(n, samples);
        plot(n, samples);
        title(strcat(int2str(sine_sets(i,j)), 'Hz Sine Wave'));
        xlabel('Time /s');
        ylabel('Amplitude');
    end
    
end
