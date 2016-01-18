function [ output_args ] = histogram( input_args )

img = input_args;
[x,y]=size(img);

img = reshape(img, [x * y, 1]);
hist(img, 300);

end

