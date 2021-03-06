function [imageRGB] = YCbCrtoRGB(YCbCr)
%Receives (input): A type 'cell' with three containers each corresponding to the image planes Y, Cb y Cr.
%Returns (output): An image in RGB format (size: rows x columns x 3) resulting from the conversion.
Y = YCbCr{1};
Cb = YCbCr{2};
Cr = YCbCr{3};

Ey = (double(Y) -16)/219;
ECb = (double(Cb) - 128)/224;
ECr = (double(Cr) - 128)/224;

Kb = 0.5/0.8886;
Kr = 0.5/0.701;


Eb_Ey = ECb / Kb;
Er_Ey = ECr/ Kr;


Er = Ey + Er_Ey;
Eg = Ey + (-299*Er_Ey-114*Eb_Ey)/587;
Eb = Ey + Eb_Ey;

imageRGB_normalized(:,:,1)= Er;
imageRGB_normalized(:,:,2)= Eg;
imageRGB_normalized(:,:,3)= Eb;

imageRGB = im2uint8(imageRGB_normalized);



end

