close all
clear

load signal1.txt
x = signal1;
fs = 8192;
xf = fft(x(1:512));
% spectrogram(x)
subplot(2,1,1)
plot(0:1/8192:599/8192,x)
xlim([0,599/8192])
title('Spectrum of The Signal')
xlabel('time(s)')
subplot(2,1,2)
plot(fftshift(x(1:512)))
title('DFT of The Signal')
xlabel('frequency(HZ)')
soundsc(x,fs)