function [ imOut ] = denoise( image, kernel_type, varargin)

I = imread(image);

switch kernel_type
    case 'box'
        imOut = imboxfilt(I, 3);
        imshow(imOut);
        fprintf('Not implemented\n')
    case 'median'
        fprintf('Not implemented\n')
    case 'gaussian'
        fprintf('Not implemented\n')
end
end
