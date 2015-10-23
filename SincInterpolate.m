function [ interpolated ] = SincInterpolate( x_n, time_range, T )
%SINCINTERPOLATE USes sinc function to interpolate sampled signal
%   x_n is an array of values representing the function x(n)
%   time_range is the time mesh over which the function is interpolated
%   T is the sampling period
%   interpolated is the vector of the interpolated function

t_len = size(time_range, 2);

% Create array for efficiency
interpolated = zeros(t_len, 1);

% Generate function values
for t=1:t_len
    % Sum over n range
    for n=1:size(x_n, 2)
        arg = (pi*(time_range(t) - n * T))/T;
        sinc = sin(arg)/arg;
        interpolated(t) = interpolated(t) + sinc*x_n(n);
    end
end

end
