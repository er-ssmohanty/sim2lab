#NOT WORKING YET!!

clc;
close all;
clear all;
 
rgbi = imread('source_images/putin-stock-free.jpg');
gri = rgb2gray(rgbi);

[x_ y_] = size(gri);


gri_centred = gri;
for i=1:x_
  for j=1:y_
    gri_centred(i,j) = gri(i,j)*(-1^(i+j));
  end
end


gri_fft_orginal = fft(gri_centred);

%(-1) X+Y
d_not = mean((gri_fft_orginal));

%generic filter starts


##ideal_lpf = gri_fft_orginal;
##for i = 1:x_
##  for j=1:y_
##    if gri_fft_orginal(i,j)<=d_not
##      ideal_lpf(i,j) = 1;
##    else
##      ideal_lpf(i,j) = 0;
##    end
##  end
##end
##

%generic filter ends

%alternative filter starts
ideal_lpf = (gri_fft_orginal<=d_not);
%alternative filter ends

gri_fft_filtered = gri_fft_orginal.*ideal_lpf;
gri_fft_filtered_centred = gri_fft_filtered;
for i=1:x_
  for j=1:y_
    gri_fft_filtered_centred(i,j) = gri_fft_filtered(i,j)*(-1^(i+j));
  end
end

gri_filtered = ifft(gri_fft_filtered_centred);

%gri_prefinal = uint8(abs(gri_filtered));

gri_final = uint8(abs(gri_filtered));


##gri_final = gri_prefinal;
##for i=1:x_
##  for j=1:y_
##    gri_final(i,j) = gri_prefinal(i,j)*(-1^(i+j));
##  end
##end
imshow(gri_final);
title('Filtered Gray Image(Ideal LPF)');%d_not

figure;
imshow(gri);
title('Original Gray Image');
