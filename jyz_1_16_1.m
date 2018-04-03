function[z1] = jyz_1_16_1(x,y)
X = fft(x);
Y = fft(y);
Z1 = X.*Y;
z1 = ifft(Z1);