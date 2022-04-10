function result_im = main(Image_full_path,sub_image_m=3,sub_image_n=3)
	rgbi = imread(Image_full_path);
	gri = rgb2gray(rgbi);
	wrapped = imwrap(gri);
	filtered = filter_any(wrapped,sub_image_m,sub_image_n);
	unwrapped_filtered = filtered(2:x_+1,2:y_+1);
	result_im = uint8(unwrapped_filtered);
end
