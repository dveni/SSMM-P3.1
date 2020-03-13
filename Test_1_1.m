barrasRGB = imread('barrasRGB.bmp');

R = barrasRGB(:,:,1);
G = barrasRGB(:,:,2);
B = barrasRGB(:,:,3);

subplot(3,3,2);
imshow(barrasRGB);
subplot(3,3,4);
imshow(R);
subplot(3,3,5);
imshow(G);
subplot(3,3,6);
imshow(B);

imageGBR(:,:,1) = G;
imageGBR(:,:,2) = B;
imageGBR(:,:,3) = R;

subplot(3,3,8);
imshow(imageGBR);