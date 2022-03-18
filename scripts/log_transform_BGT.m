clc;
close all;
clear all;

rgbi = imread('~/octave/sim2lab/images/market-spices-stock-free.jpg');
const_=.3;
gri = rgb2gray(rgbi);
[x_ y_] = size(gri);
grneg = gri;

for i=1:x_
  for j=1:y_
    grineg(i,j)=const_*log(1+gri(i,j));
  end
end

grineg = grineg./max(grineg);

subplot(1,3,1);
imshow(grineg);

subplot(1,3,2);
imshow(gri);

subplot(1,3,3);
imshow(rgbi);