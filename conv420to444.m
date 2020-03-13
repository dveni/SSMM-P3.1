function [YCbCr444] = conv420to444(YCbCr420)
Y = YCbCr420{1};
Cb = YCbCr420{2};
Cr = YCbCr420{3};
[row,col] = size(Y);
for i = 1:row
    for j = 1:col
        if (mod(j,2) ~= 0 && mod(i,2) ~= 0)
            
            Cb(i,j + 1) = Cb(i,j);
            Cb(i + 1,j) = Cb(i,j);
            Cb(i + 1,j + 1) = Cb(i,j);
            
            Cr(i,j + 1) = Cr(i,j);
            Cr(i+ 1,j) = Cr(i,j);
            Cr(i + 1,j + 1) = Cr(i,j);
            
        end
    end
end
YCbCr444 = {Y, Cb, Cr};
end