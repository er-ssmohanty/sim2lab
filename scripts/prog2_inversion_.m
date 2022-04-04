clc;
clear all;
close all;

r = 1:256;
s = 255-r;
subplot(2,2,1);
plot(r,s);

I = imread('F:\dip_simulation2_Kunwar_Subhransu\images\Lenna.png');
I = rgb2gray(I);
shape_ = size(I);
neg_ = zeros(shape_(1),shape_(2));


subplot(2,2,2);
imshow(I);
%disp(shape_);
%disp(size(neg_));

for i = 1:shape_(1)
    for j = 1:shape_(2)
        for k = r
            if I(i,j)== r(k)
                neg_(i,j) = s(k);
            end
        end
    end
end

%neg_ = 255-I;
subplot(2,2,3);
imshow(neg_);


