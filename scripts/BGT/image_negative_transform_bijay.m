clc;
close all;
clear all;

rgbi = imread('F:\bijay\the_avengers');
gryi = rgb2gray(rgbi);
g = gryi;
[M N] = size(gryi);
r = [0:255];
%disp(r);
s = 255-r;

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