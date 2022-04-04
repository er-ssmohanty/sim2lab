clc;
close all;
clear all;

rgbi = imread('~/octave/sim2lab/images/putin-stock-free.jpg');
gri = rgb2gray(rgbi);
[x_ y_] = size(gri);
grneg = gri;

for i=1:x_
  for j=1:y_
    grineg(i,j)=255-gri(i,j);
  end
end


subplot(3,1,1);
imshow(grineg);

subplot(3,1,2);
imshow(gri);

subplot(3,1,3);
imshow(rgbi);