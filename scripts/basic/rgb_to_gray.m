I=imread('F:\dip_simulation2_Kunwar_Subhransu\a_woman.jpg');
x=rgb2gray(I);
subplot(1,3,1)
imshow(I);
title('Original Image');      
%figure();
subplot(1,3,2);
imshow(x);
title('using inbuilt function');      

%% without using inbuilt code
shape_ = size(I);
orgI = I;
for i = drange(1:shape_(1))
    for j = drange(1:shape_(2))
        I(i,j,3)=0.3*I(i,j,3);
        I(i,j,2)=0.59*I(i,j,2);
        I(i,j,1)=0.11*I(i,j,1);
    end
end
I = I(:,:,1)+I(:,:,2)+I(:,:,3);

%%
subplot(1,3,3);
imshow(I);
title('Without using inbuilt function');      