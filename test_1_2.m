peppersRGB = imread('RGB.bmp');
peppersYCbCr = RGBtoYCbCr(peppersRGB);
reconstructedPeppersRGB = YCbCrtoRGB(peppersYCbCr);


figure(1);
imshow(peppersRGB);
figure(2);
imshow(reconstructedPeppersRGB);

peaksnr = psnr(reconstructedPeppersRGB,peppersRGB);

