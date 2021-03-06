imageRGB = imread('PeppersRGB.bmp');
imageYCbCr = RGBtoYCbCr(imageRGB);
imageYCbCr420 = conv444to420(imageYCbCr);
imageYCbCr444 = conv420to444(imageYCbCr420);
imageRGBReconstructed = YCbCrtoRGB(imageYCbCr444);

subplot(1,2,1);
imshow(imageRGB);
subplot(1,2,2);
imshow(imageRGBReconstructed);

psnr(imageRGBReconstructed,imageRGB)