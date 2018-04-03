close all
clear

len1 = randi([3, 6]);
len2 = randi([1, 2]);
x = randi([1, 5], 1, len1);
y = randi([1, 5], 1, len1+len2);
totallength = length(x)+length(y)-1;
X = fft(x, totallength);
Y = fft(y, totallength);
Z = X.*Y;
z1 = ifft(Z);
z2 = conv(x,y);
subplot(2,1,1)
stem([0:totallength-1],z1,'.')
title('DFT Convolution Computation');
subplot(2,1,2)
stem([0:totallength-1],z2,'.')
title('Compute Linear Convolution Directly');