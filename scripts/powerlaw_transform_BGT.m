clc;
close all;
clear all;

rgbi = imread('~/octave/sim2lab/images/market-spices-stock-free.jpg');
gri = rgb2gray(rgbi);
[x_ y_] = size(gri);


const_a=3;
const_b=1;
const_c=0.33;

gri2 = im2double(gri);
gri2 = gri2./max(gri2);

grilog_a=gri2;
grilog_b=gri2;
grilog_c=gri2;


for i=1:x_
  for j=1:y_
    grilog_ax(i,j)=const_a*(gri2(i,j)^gamma_x);
    grilog_bx(i,j)=const_b*(gri2(i,j)^gamma_x);
    grilog_cx(i,j)=const_c*(gri2(i,j)^gamma_x);
    grilog_ay(i,j)=const_a*(gri2(i,j)^gamma_y);
    grilog_by(i,j)=const_b*(gri2(i,j)^gamma_y);
    grilog_cy(i,j)=const_c*(gri2(i,j)^gamma_y);
    grilog_az(i,j)=const_a*(gri2(i,j)^gamma_z);
    grilog_bz(i,j)=const_b*(gri2(i,j)^gamma_z);    
    grilog_cz(i,j)=const_c*(gri2(i,j)^gamma_z);
  end
end

function normaliz_(x)
  return x./max(x);
end

grilog_ax = grilog_a./max(grilog_a);
grilog_ax = grilog_b./max(grilog_b);
grilog_ax = grilog_c./max(grilog_c);


subplot(2,2,1);
imshow(gri);
title('Original Gray Image');

subplot(2,2,2);
imshow(grilog_a);
title('Log XForm with Const=3');


subplot(2,2,3);
imshow(grilog_b);
title('Log XForm with Const=1');


subplot(2,2,4);
imshow(grilog_c);
title('Log XForm with Const=0.3');
