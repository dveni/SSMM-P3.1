imageRGB = imread('PeppersRGB.bmp');
imageYCbCr = RGBtoYCbCr(imageRGB);
imageYCbCr422 = conv444to422(imageYCbCr);
imageYCbCr444 = conv422to444(imageYCbCr422);
imageRGBReconstructed = YCbCrtoRGB(imageYCbCr444);
subplot(2,2,1);
imshow(imageRGB);
subplot(2,2,2);
imshow(imageRGBReconstructed);

psnr(imageRGBReconstructed,imageRGB)


imageYCbCr = RGBtoYCbCr(imageRGB);
imageYCbCr420 = conv444to420(imageYCbCr);
imageYCbCr444 = conv420to444(imageYCbCr420);
imageRGBReconstructed = YCbCrtoRGB(imageYCbCr444);

subplot(2,2,3);
imshow(imageRGB);
subplot(2,2,4);
imshow(imageRGBReconstructed);

psnr(imageRGBReconstructed,imageRGB)