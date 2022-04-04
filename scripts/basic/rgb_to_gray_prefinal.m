clc;
clear all;
close all;

I=imread('F:\dip_simulation2_Kunwar_Subhransu\a_woman.jpg');
x=rgb2gray(I);
orgI = I;

%subplot(1,3,1)
%imshow(I);
%title('Original Image');      
%figure();
%subplot(1,3,2);
%imshow(x);
%title('using inbuilt function');      

%% without using inbuilt code
shape_ = size(x);
rows_ =shape_(1);
columns_ = shape_(2);


x1 = double(I);
%imshow(x1);
%title('image values in double');

imshow(x1/255);
title('image values in normalized double');

%figure();
x2 = uint8(x1);
%imshow(x1);

disp('Size of the gray image is')
disp(shape_);
disp('No of rows:');
disp(rows_);
disp('No of rows:');
disp(columns_);


%imshow(I(1:100,1:100));
subplot(2,2,1)
imshow(I(1:rows_/2,1:colu));

subplot(2,2,2)
imshow(I(1:128,99:196));

subplot(2,2,3)
imshow(I(129:256,1:98));

subplot(2,2,4)
imshow(I(129:256,99:196));
