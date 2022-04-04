clc;
close all;
clear all;

rgbi = imread('F:\dip_simulation2_Kunwar_Subhransu\images\Lenna.png');
gryi = rgb2gray(rgbi);
gryi = im2double(gryi);
g = gryi;
const_=input('Enter the constant value:');
[M N] = size(gryi);
r = [0:255];
r = r/max(r);
%disp(r);
s = const_(1)*log(1+r);
count_=0
for i = 1:M
    for j = 1:N
        value = 0;
        for k = 1:256
            if (gryi(i,j)==r(k))
                value=s(k);
                %count_ = count_+1
            end
        end
        g(i,j)=value;
    end
end
%disp(count_);
subplot(3,3,1);
imshow(gryi);
subplot(3,3,2);
imshow(g);
subplot(3,3,3);

figure, plot(r,s);

subplot(3,3,4);

subplot(3,3,5);

subplot(3,3,6);
