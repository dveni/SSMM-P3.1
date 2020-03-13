barrasRGB = imread('barrasRGB.bmp');
subplot(2,3,2);
imshow(barrasRGB);
subplot(2,3,4);
imshow(barrasRGB(:,:,1));
subplot(2,3,5);
imshow(barrasRGB(:,:,2));
subplot(2,3,6);
imshow(barrasRGB(:,:,3));