clc;
close all;
clear all;
threshold_ = input('Enter the threshold value: ');
rgbi = imread('F:\dip_simulation2_Kunwar_Subhransu\images\Lenna.png');
gryi = rgb2gray(rgbi);
g = gryi;
[M, N] = size(gryi);
r = [0:255];
%disp(r);
max_val = 786;
s = max_val*(r>threshold_);

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