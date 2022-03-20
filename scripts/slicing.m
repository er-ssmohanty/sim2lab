clc;
close all;
clear all;
 
rgbi = imread('~/octave/sim2lab/source_images/putin-stock-free.jpg');
gri = rgb2gray(rgbi);

[x_ y_] = size(gri);
x_mid = floor(x_/2);
y_mid = floor(y_/2);

gri_crp_1by4 = gri([1:x_mid],[1:y_mid]);
gri_crp_2by4 = gri([1:x_mid],[y_mid:y_]);
gri_crp_3by4 = gri([x_mid:x_],[1:y_mid]);
gri_crp_4by4 = gri([x_mid:x_],[y_mid:y_]);


subplot(2,2,1);
imshow(gri_crp_1by4);

subplot(2,2,2);
imshow(gri_crp_2by4);

subplot(2,2,3);
imshow(gri_crp_3by4);

subplot(2,2,4);
imshow(gri_crp_4by4);

