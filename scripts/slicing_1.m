clc;
close all;
clear all;
rgbi = imread('F:\dip_simulation2_Kunwar_Subhransu\images\a_woman.jpg');
gryi = rgb2gray(rgbi);
g = gryi;
[M N] = size(gryi);
max_val =255;
r = [0:max_val];
%disp(r);
s = r;
low_lim = input('Enter the lower limit: ');
hig_lim = input('Enter the upper limit: ');

for i=1:max_val
    if ((s(i)>low_lim)&&(s(i)<hig_lim))
        s(i)=255;
    end  
end


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