function [YCbCr444] = conv422to444(YCbCr422)
Y = YCbCr422{1};
Cb = YCbCr422{2};
Cr = YCbCr422{3};
[height,width] = size(Cr);
Cb = imresize(Cb, [height, width*2], 'nearest');
Cr = imresize(Cr, [height, width*2], 'nearest');

YCbCr444 = {Y, Cb, Cr};
end