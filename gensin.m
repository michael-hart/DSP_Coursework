function samples = gensin(A, f0, fs, phi, nstart, nend);

n = nstart:nend;
samples = A*sin(2*pi*f0*n / fs + phi);