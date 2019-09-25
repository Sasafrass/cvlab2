function [ PSNR ] = myPSNR( orig_image, approx_image )
I = imread(orig_image);
I = im2double(I);
Iroof = imread(approx_image);
Iroof = im2double(Iroof);

imax = max(max(I));

RMSE = sqrt(mean(mean((I - Iroof).^2)));

PSNR = 20 * log10(imax / RMSE);
end
