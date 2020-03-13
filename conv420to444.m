function [YCbCr444] = conv420to444(YCbCr420)
Y = YCbCr420{1};
Cb = YCbCr420{2};
Cr = YCbCr420{3};

[height,width] = size(Cr);
Cb = imresize(Cb, [height*2, width*2], 'nearest');
Cr = imresize(Cr, [height*2, width*2], 'nearest');

YCbCr444 = {Y, Cb, Cr};
end