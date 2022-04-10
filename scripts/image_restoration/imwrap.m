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
