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
    grilog_a(i,j)=const_a*log(1+gri2(i,j));
    grilog_b(i,j)=const_b*log(1+gri2(i,j));
    grilog_c(i,j)=const_c*log(1+gri2(i,j));
  end
end

grilog_a = grilog_a./max(grilog_a);
grilog_b = grilog_b./max(grilog_b);
grilog_c = grilog_c./max(grilog_c);


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
