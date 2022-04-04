clc;
clear all;
close all;

I=imread('F:\dip_simulation2_Kunwar_Subhransu\a_woman.jpg');
%x=rgb2gray(I);

R = (:,:,1);
G = (:,:,2);
B = (:,:,3);
gray__ = (R*0.3)+(G*0.59)+(B*0.11);

imshow(gray__);