function [YCbCr444] = conv422to444(YCbCr422)
Y = YCbCr422{1};
Cb = YCbCr422{2};
Cr = YCbCr422{3};
[row,col] = size(Y);
for i = 1:row
    for j = 1:col
        if (mod(j,2) ~= 0)
            Cb(i,j + 1) = Cb(i,j);
            Cr(i,j + 1) = Cr(i,j);
        end
    end
end
YCbCr444 = {Y, Cb, Cr};
end