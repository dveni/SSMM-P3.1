function [YCbCr420] = conv444to420(YCbCr444)
Y = YCbCr444{1};
Cb = YCbCr444{2};
Cr = YCbCr444{3};
[height,width] = size(Y);
Cb = imresize(Cb, [height/2, width/2], 'nearest');
Cr = imresize(Cr, [height/2, width/2], 'nearest');

YCbCr420 = {Y, Cb, Cr};
end

