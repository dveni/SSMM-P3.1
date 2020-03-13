peppersRGB = imread('PeppersRGB.bmp');

figure(1);
imshow(peppersRGB);

peppersYCbCr = RGBtoYCbCr(peppersRGB);

peppersYCbCr420 = conv444to420(peppersYCbCr);

% Primer metodo

YLinear = peppersYCbCr420{1};
CbLinear = peppersYCbCr420{2};
CrLinear = peppersYCbCr420{3};

[height,width] = size(CrLinear);

CbLinear = imresize(CbLinear, [height*2, width*2], 'bilinear');
CrLinear = imresize(CrLinear, [height*2, width*2], 'bilinear');

YCbCr444Linear = {YLinear, CbLinear, CrLinear};
reconstructedLinear = YCbCrtoRGB(YCbCr444Linear);

figure(2);
imshow(reconstructedLinear);

% Segundo metodo

YCubic = peppersYCbCr420{1};
CbCubic = peppersYCbCr420{2};
CrCubic = peppersYCbCr420{3};

[height,width] = size(CrCubic);

CbCubic = imresize(CbCubic, [height*2, width*2], 'bicubic');
CrCubic = imresize(CrCubic, [height*2, width*2], 'bicubic');

YCbCr444Cubic = {YCubic, CbCubic, CrCubic};
reconstructedCubic = YCbCrtoRGB(YCbCr444Cubic);

figure(3);
imshow(reconstructedCubic);

% PSNRs

peaksnrLin = psnr(reconstructedLinear,peppersRGB);
peaksnrCub = psnr(reconstructedCubic,peppersRGB);

