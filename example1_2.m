function samples = example1_2(A, f0, fs, phi, nstart, nend);

n = nstart:nend;
samples = A*sin(2*pi*f0 / fs + phi);