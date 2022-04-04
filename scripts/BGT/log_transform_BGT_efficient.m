clc;
close all;
clear all;

rgbi = imread('~/octave/sim2lab/images/market-spices-stock-free.jpg');
gri = rgb2gray(rgbi);
[x_ y_] = size(gri);


const_=[3 1 0.333];

gri2 = im2double(gri);
gri2 = gri2./max(gri2);

grilog_a=grilog_b=grilog_c=gri2;

r = 0:255;
r = r/max(r);
sa_ = const_(1)*log(1+r);
sb_ = const_(2)*log(1+r);
sc_ = const_(3)*log(1+r);

for i=1:x_
  for j=1:y_
    for k = 1:256
      if gri2(i,j)==r(k)
        grilog_a(i,j)=sa_(k);
        grilog_b(i,j)=sb_(k);
        grilog_c(i,j)=sc_(k);
      end
    end
    disp(i)
    disp(j)
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
