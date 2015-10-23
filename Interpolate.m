function [ interpolated ] = Interpolate( dsp_sig, time )
%INTERPOLATE Interpolates given digital array with given time series

    n = 1:size(time,2);
    interpolated = zeros(1, size(time,2));
    for i=n
        for j=n
            arg = pi*(i-j);
            interpolated(i) = interpolated(i) + (sin(arg)/arg);
        end
    end
end

