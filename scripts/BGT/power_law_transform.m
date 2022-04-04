clc;
close all;
clear all;

rgbi = imread('F:\dip_simulation2_Kunwar_Subhransu\images\Lenna.png');
gryi = rgb2gray(rgbi);
gryi = im2double(gryi);
g = gryi;
const_=input('Enter the constant value:');
gamma_=input('Enter the gamma value:');
[M N] = size(gryi);
r = [0:255];
r = r/max(r);
%disp(r);
s = const_*(r.^gamma_);

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
figure,imshow(gryi);
figure,imshow(g);
figure, plot(r,s);