function [ output_args ] = medianQuadratikDeviation( img )

[x,y,z]=size(img);

median = medianGrey(img);

medianMatrix = zeros(x,y);
medianMatrix(:,:) = median;

img = img - medianMatrix;
img = img.^2;

count = x * y;
output_args = sum(sum(img)) / count;

end

