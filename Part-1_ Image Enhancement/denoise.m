function [ imOut ] = denoise( image, kernel_type, varargin)

I = imread(image);

switch kernel_type
    case 'box'
        imOut = imboxfilt(I, varargin{1});
        imshow(imOut);
    case 'median'
        imOut = medfilt2(I, [varargin{1} varargin{1}]);
        imshow(imOut);
    case 'gaussian'
        fprintf('Not implemented\n')
end
end
