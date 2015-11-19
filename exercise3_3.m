% The output signals for system ii) and iii) in exercise 2.3 contain
% natural frequencies. These frequencies are dependent upon the number and
% values of the linear coefficients am, which describe the nature of the
% feedback within the system. In z-transform notation, the natural
% frequencies may be found by finding the roots of the system
% characteristic equation A(z) = 1 + sum from m=1 to Na of am*z^-m. These
% roots are the system poles and denoted by p1 and p2.

% Use the roots command within the MATLAB to solve the characteristic
% equation for system (iii). Find the magnitude and phase of these roots.
% (Don't forget the help facility to obtain more information on the roots
% command)

% System has a=[1, -1.8*cos(pi/5), 0.81] and b=[1, 0.5];
a = [1, -1.8*cos(pi/5), 0.81];
b = [1, 0.5];
% Solve system when equal to 0. Assume all components are multiplied by
% x^o, where o is minimum z exponent => roots are the same.
r = roots(a);

% Find and display the magnitude and phase of the roots
disp(abs(r));
disp(angle(r));
