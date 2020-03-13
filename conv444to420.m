function [YCbCr420] = conv444to420(YCbCr444)
Y = YCbCr444{1};
Cb = YCbCr444{2};
Cr = YCbCr444{3};
[row,col] = size(Y);
for i = 1:row
    for j = 1:col
        if (mod(j,2) == 0 || mod(i, 2) == 0)
           Cb(i,j) = 128;
           Cr(i,j) = 128;
        end
    end
end
YCbCr420 = {Y, Cb, Cr};
end

