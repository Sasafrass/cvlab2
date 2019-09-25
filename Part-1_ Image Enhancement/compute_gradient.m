function [Gx, Gy, im_magnitude,im_direction] = compute_gradient(image)

hsobel = [-1 0 1; -2 0 2; -1 0 1];
vsobel = hsobel.';

unnorm_Gx = conv2(image, hsobel)./1020; %convolute and scale back to [-1,1] interval
unnorm_Gy = conv2(image, vsobel)./1020;

Gx = (unnorm_Gx + 1)./2; %normalize 
Gy = (unnorm_Gy + 1)./2;

im_magnitude = sqrt(unnorm_Gx.^2 + unnorm_Gy.^2); 
im_direction = (atan2(unnorm_Gy,unnorm_Gx)+pi)./(2*pi); %calculate direction and normalize 

% Can optionally run this to filter out the
% low gradient pixels from the magnitude image
% dirs = im_magnitude > 0.01;
% im_direction(dirs==0) = 0.5;

end

