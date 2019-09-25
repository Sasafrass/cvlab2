function imOut = compute_LoG(image, LOG_type)

switch LOG_type
    case 1
        %method 1
        filter1 = fspecial('gaussian', 5, 0.5);
        filter2 = fspecial('laplacian');
        firstDer = imfilter(image,filter1,'conv'); 
        imOut = imfilter(firstDer,filter2,'conv');

    case 2
        %method 2
        filter = fspecial('log', 5, 0.5);
        imOut = imfilter(image,filter,'conv');
        
    case 3
        %method 3
        gauss1 = fspecial('gaussian', 5, 0.0001);
        gauss2 = fspecial('gaussian', 5, 50);
        filter = gauss1 - gauss2;
        imOut = imfilter(image,filter,'conv');
end
end