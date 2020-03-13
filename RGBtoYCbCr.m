function [YCbCr] = RGBtoYCbCr(imageRGB)
%Receives (input): An image in RGB format (the same format delivered by Matllab function imread).
%Returns (output): A type 'cell' with three containers each corresponding to the image planes Y, Cb y Cr.
imageRGB_normalized = im2double(imageRGB);
Er = imageRGB_normalized(:,:,1);
Eg = imageRGB_normalized(:,:,2);
Eb = imageRGB_normalized(:,:,3);

Ey = 0.299*Er + 0.587*Eg + 0.114*Eb;
Er_Ey =  0.701*Er - 0.587*Eg - 0.114*Eb;
Eb_Ey =  -0.299*Er - 0.587*Eg + 0.886*Eb;

Kb = 0.5/0.8886;
Kr = 0.5/0.701;

ECb = Kb*Eb_Ey;
ECr = Kr*Er_Ey;

%Y = im2uint8(219*Ey+16);
%Cb = im2uint8(224*ECb + 128);
%Cr = im2uint8(224*ECr + 128);

Y = uint8(219*Ey+16);
Cb = uint8(224*ECb + 128);
Cr = uint8(224*ECr + 128);
YCbCr = {Y, Cb, Cr}; 
end

