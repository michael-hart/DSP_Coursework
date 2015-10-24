function [ interpolated ] = SincInterpolate( x_n, time_range, T, nstart )
%SINCINTERPOLATE USes sinc function to interpolate sampled signal
%   x_n is an array of values representing the function x(n)
%   time_range is the time mesh over which the function is interpolated
%   T is the sampling period
%   interpolated is the vector of the interpolated function
%   nstart is the index of the first sample given, e.g. 0 for t=0 onwards

t_len = size(time_range, 2);

% Create array for efficiency
interpolated = zeros(t_len, 1);

% Generate function values
for t=1:t_len
    % Sum over n range
    for n=0:size(x_n, 2)-1
        if (time_range(t) - (nstart+n) * T == 0)
            interpolated(t) = x_n(n+1);
            break;
        end
        arg = (pi*(time_range(t) - (nstart+n) * T))/T;
        sinc = sin(arg)/arg;
        interpolated(t) = interpolated(t) + sinc*x_n(n+1);
    end
end

end
