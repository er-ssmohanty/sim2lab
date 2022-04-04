clc;
close all;
clear all;

rgbi = imread('~/octave/sim2lab/images/market-spices-stock-free.jpg');
gri = rgb2gray(rgbi);
[x_ y_] = size(gri);


const_a=3;
const_b=1;
const_c=0.33;

gamma_x=2;
gamma_y=1;
gamma_z=0.5;

gri2 = im2double(gri);
gri2 = gri2./max(gri2);

grilog_ax=grilog_bx=grilog_cx=grilog_ay=grilog_by=gri2;
grilog_cy=grilog_az=grilog_bz=grilog_cz=gri2;

r=0:255;
r=r./max(r);
sab=
sab
sab
sab

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

%function normaliz_(x)
%  return x./max(x);
%end

grilog_ax = grilog_ax./max(grilog_ax);
grilog_bx = grilog_bx./max(grilog_bx);
grilog_cx = grilog_cx./max(grilog_cx);

grilog_ay = grilog_ay./max(grilog_ay);
grilog_by = grilog_by./max(grilog_by);
grilog_cy = grilog_cy./max(grilog_cy);

grilog_az = grilog_az./max(grilog_az);
grilog_bz = grilog_bz./max(grilog_bz);
grilog_cz = grilog_cz./max(grilog_cz);


subplot(4,3,1);
imshow(gri);
title('Original Gray Image');

subplot(4,3,4);
imshow(grilog_ax);
title('Power law transform with C=3, gamma=2');


subplot(4,3,5);
imshow(grilog_bx);
title('Power law transform with C=1, gamma=2');

subplot(4,3,6);
imshow(grilog_cx);
title('Power law transform with C=1/3, gamma=2');

subplot(4,3,7);
imshow(grilog_ay);
title('Power law transform with C=3, gamma=1');

subplot(4,3,8);
imshow(grilog_by);
title('Power law transform with C=1, gamma=1');

subplot(4,3,9);
imshow(grilog_cy);
title('Power law transform with C=1/3, gamma=1');

subplot(4,3,10);
imshow(grilog_az);
title('Power law transform with C=3, gamma=0.5');

subplot(4,3,11);
imshow(grilog_bz);
title('Power law transform with C=1, gamma=0.5');

subplot(4,3,12);
imshow(grilog_cz);
title('Power law transform with C=1/3, gamma=0.5');