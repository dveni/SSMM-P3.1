function [YCbCr422] = conv444to422(YCbCr444)
Y = YCbCr444{1};
Cb = YCbCr444{2};
Cr = YCbCr444{3};
[height,width] = size(Y);
Cb = imresize(Cb, [height, width/2], 'nearest');
Cr = imresize(Cr, [height, width/2], 'nearest');
YCbCr422 = {Y, Cb, Cr};
end

