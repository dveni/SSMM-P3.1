imageRGB = imread('PeppersRGB.bmp');

R = imageRGB(:,:,1);
G = imageRGB(:,:,2);
B = imageRGB(:,:,3);

subplot(3,3,2);
imshow(imageRGB);
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