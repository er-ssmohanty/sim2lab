################################################################################
function image_filtered = filter_any(image_,m_,n_)
	image_filtered = image_;
	subim_vect = rand(1,(m_*n_)-1);
	for i = 1:x_
		for j = 1:y_
			subim_vect(1:3) = [image_(i,j),image_(i,j+1),image_(i,j+2)];
			subim_vect(4:6) = [image_(i+1,j),image_(i+1,j+1),image_(i+1,j+2)];
			subim_vect(7:9) = [image_(i+2,j),image_(i+2,j+1),image_(i+2,j+2)];
			image_filtered(i+1,j+1) = mean(subim_vect,"a");
		end
	end
	#return image_filtered;
end
################################################################################


clean_();
image_path = 'source_images/spices0.jpg';
gri_final = main(image_path);
gri = rgb2gray(imread(image_path));



###################################################
subplot(1,2,1);
imshow(gri_final);
title('Denoised Image using Arithmatic Mean Filter');#d_not

subplot(1,2,2);
imshow(gri);
title('Original Gray Image');

saveas(1,"result_images/generic_am_filter_1.png");
#####################################################
