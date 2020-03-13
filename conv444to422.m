function [YCbCr422] = conv444to422(YCbCr444)
Y = YCbCr444{1};
Cb = YCbCr444{2};
Cr = YCbCr444{3};
[row,col] = size(Y);
for i = 1:row
    for j = 1:col
        if (mod(j,2) == 0)
           Cb(i,j) = 128;
           Cr(i,j) = 128;
        end
    end
end
YCbCr422 = {Y, Cb, Cr};
end

