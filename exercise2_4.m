%Plot the DFT for the following signals and comment whether the DFTs are real
% or complex.
% (i) [1 1 1 0 0 0 1 1]
% (ii) [1 1 1 1 0 0 0 1]
% (iii) [1 1 1 0 0 0 0 1]

x_n = cell(3,1);
x_n{1} = [1 1 1 0 0 0 1 1];
x_n{2} = [1 1 1 1 0 0 0 1];
x_n{3} = [1 1 1 0 0 0 0 1];

N = size(x_n,1);
X = cell(N,1);
for i=1:N
    
    % Find DFT
    X{i} = fft(x_n{i});
    
    % Plot magnitude and phase
    figure(i);
    subplot(2,1,1);
    plot(0:7, abs(X{i}));
    xlabel('Sample Number');
    ylabel('Magnitude');
    title(['DFT of [' int2str(x_n{i}) ']']);
    
    subplot(2,1,2);
    plot(0:7, angle(X{i}));
    xlabel('Sample Number');
    ylabel('Phase');
    
    txt_real = 'not ';
    if (isreal(X{i}))
        txt_real = '';
    end
        
    disp(['Sample number ' int2str(i) ' is ' txt_real 'real.']);
    
end


