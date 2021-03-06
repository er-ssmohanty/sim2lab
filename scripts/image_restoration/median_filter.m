clc;
close all;
clear all;
 
rgbi = imread('source_images/spices0.jpg');
gri = rgb2gray(rgbi);

[x_ y_] = size(gri);

wrapper_im = rand(x_+2,y_+2);
wrapper_im(2:x_+1,2:y_+1)=gri;

%edge
wrapper_im(1,:)=wrapper_im(2,:);
wrapper_im(x_+2,:)=wrapper_im(x_+1,:);
wrapper_im(:,1)=wrapper_im(:,2);
wrapper_im(:,y_+2)=wrapper_im(:,y_+1);

subim_vect = rand(1,9);

for i = 1:x_
  for j = 1:y_
    subim_vect(1:3) = [wrapper_im(i,j),wrapper_im(i,j+1),wrapper_im(i,j+2)];
    subim_vect(4:6) = [wrapper_im(i+1,j),wrapper_im(i+1,j+1),wrapper_im(i+1,j+2)];
    subim_vect(7:9) = [wrapper_im(i+2,j),wrapper_im(i+2,j+1),wrapper_im(i+2,j+2)];
    wrapper_im(i+1,j+1) = median(subim_vect);  
  end
end


gri_final = wrapper_im(2:x_+1,2:y_+1);
gri_final = uint8(gri_final);

subplot(1,2,1);
imshow(gri_final);
title('Denoised Image using Median Filter');%d_not

subplot(1,2,2);
imshow(gri);
title('Original Gray Image');

saveas(1,"result_images/median_filter_0.png");