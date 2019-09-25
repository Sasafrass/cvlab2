function [ imOut ] = denoise( image, kernel_type, varargin)

I = imread(image);

% So image is right size without border 
iptsetpref('ImshowBorder','tight');

switch kernel_type
    case 'box'
        imOut = imboxfilt(I, varargin{1});
        imshow(imOut);
    case 'median'
        imOut = medfilt2(I, [varargin{1} varargin{1}]);
        imshow(imOut);
    case 'gaussian'
        % Gauss2D arg1 = sigma, arg2 = kernel_size
        imOut = imfilter(I, gauss2D(varargin{1}, varargin{2}));
        imshow(imOut);
end
end
