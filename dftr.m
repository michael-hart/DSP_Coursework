function y = dftr( b, a, x )
%DFTR Applies IIR filter to x using a,b coefficients
%   b is a row/column vector with coefficients of the feedforward samples
%   a is a row/column vector with coefficients of the feedback samples,
%       beginning with 1
%   x is a row/column vector containing the input samples
%   y is an output column vector contain N + Nb samples of the filtered
%       input signal

% Ensure coefficients are row vectors, reversed for easy multiply
b = b(:)';
a = a(:)';
% Ensure input samples are column vectors
x = x(:);

% Number of input samples
N = size(x,1);
% Filter coefficient vector sizes
Na = size(a,2);
Nb = size(b,2);
if Na==1
    a = 0;
else
    a = a(2:Na);
    Na = Na - 1;
end

% Allocate output vector
y = zeros(N, 1);

% Rotating vectors for A, B; must be row vectors for multiplication
Ycurrent = zeros(Na, 1);
Xcurrent = cat(1, x(1), zeros(Nb-1, 1));

% Every increment of n should rotate the vector along by 1 downwards
for n=1:N-1
    y(n) = b*Xcurrent - a*Ycurrent;
    if Nb==1
        Xcurrent = x(n+1);
    else
        Xcurrent = cat(1, x(n+1), Xcurrent(1:Nb-1));
    end
    if Na==1
        Ycurrent = y(n);
    else
        Ycurrent = cat(1, y(n), Ycurrent(1:Na-1));
    end
end

y(n+1) = b*Xcurrent - a*Ycurrent;

end
