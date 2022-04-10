################################################################################
#
################################################################################ 
function wrapper_im = imwrap(a_gray_image)
	[x_ y_] = size(a_gray_image);
	wrapper_im = rand(x_+2,y_+2);
	wrapper_im(2:x_+1,2:y_+1)=a_gray_image;
	wrapper_im(1,:)=wrapper_im(2,:);
	wrapper_im(x_+2,:)=wrapper_im(x_+1,:);
	wrapper_im(:,1)=wrapper_im(:,2);
	wrapper_im(:,y_+2)=wrapper_im(:,y_+1);
	#return wrapper_im;
end
################################################################################
#
################################################################################
function image_filtered = filter_any(image_,m_,n_)
	image_filtered = image_;
	subim_vect = rand(1,(m_*n_)-1);
	for i = 1:x_
		for j = 1:y_
			subim_vect(1:3) = [image_(i,j),image_(i,j+1),image_(i,j+2)];
			subim_vect(4:6) = [image_(i+1,j),image_(i+1,j+1),image_(i+1,j+2)];
			subim_vect(7:9) = [image_(i+2,j),image_(i+2,j+1),image_(i+2,j+2)];
			image_filtered(i+1,j+1) = median(subim_vect);
		end
	end
	#return image_filtered;
end
################################################################################
#
################################################################################
function result_im = main(Image_full_path,sub_image_m=3,sub_image_n=3)
	rgbi = imread(Image_full_path);
	gri = rgb2gray(rgbi);
	wrapped = imwrap(gri);
	filtered = filter_any(wrapped,sub_image_m,sub_image_n);
	unwrapped_filtered = filtered(2:x_+1,2:y_+1);
	result_im = uint8(unwrapped_filtered);
end
################################################################################
#
################################################################################
function clean_()
	clc;
	close all;
	clear all;
end
################################################################################
################################################################################

clean_();
image_path = 'source_images/spices0.jpg';
gri_final = main(image_path);
gri = rgb2gray(imread(image_path));



###################################################
subplot(1,2,1);
imshow(gri_final);
title('Denoised Image using Median Filter');#d_not

subplot(1,2,2);
imshow(gri);
title('Original Gray Image');

saveas(1,"result_images/generic_median_filter_1.png");
#####################################################
