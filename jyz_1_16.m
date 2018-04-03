close all
clear

len = randi([3, 6]);
x = randi([1, 5], 1, len);
y = randi([1, 5], 1, len);

z1 = jyz_1_16_1(x,y);

z2 = jyz_1_16_2(x,y,len);

subplot(2,1,1)
stem([0:len-1],z1,'.')
title('DFT Computation');
subplot(2,1,2)
stem([0:len-1],z2,'.')
title('Compute directly');

if (z2 == z1)
    disp('Two results are the same')
else
    disp('Two results are different')
end   