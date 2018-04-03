function[z2] = jyz_1_16_1(x,y,len)
i = 1;
j = 1;
circonvMatx = zeros(len);
for i = 1:1:len
    for j = 1:1:len 
        for k = 1:1:len
            if (j - i == k-1)||(j+len-i == k-1)
                circonvMatx(i,j) = x(k); %circle convolution Matrix
            end
        end
    end
end
circonvMatx = circonvMatx';
z2 = (circonvMatx * y')';