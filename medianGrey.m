function [ output_args ] = medianGrey( img )

[x,y,z]=size(img);
count = x * y;
output_args = sum(sum(img)) / count;

end

