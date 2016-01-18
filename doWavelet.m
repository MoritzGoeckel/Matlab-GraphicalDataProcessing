function [ output ] = doWavelet( image )

[h w c] = size(image);

if(c == 3)
   r = image(:,:,1);
   g = image(:,:,2);
   b = image(:,:,3);

   tmp = zeros(h, w * 3);
   [h w] = size(tmp);

   tmp(1:h, w / 3 * 0 + 1:w / 3 + w / 3 * 0) = r;
   tmp(1:h, w / 3 * 1 + 1:w / 3 + w / 3 * 1) = g;
   tmp(1:h, w / 3 * 2 + 1:w / 3 + w / 3 * 2) = b;

   image = tmp;
end

[width height lol]=size(image);

iterations = log(width) / log(2);
image = myWavelet(image);
subImg = image;

for currentIteration=2:iterations
   
    width = width / 2;
    height = height / 2;
    
    if mod(width, 2) ~= 0 || mod(height, 2) ~= 0
        break;
    end
    
    subImg = subImg(1:width, 1:height);
    subImg = myWavelet(subImg);
       
    image(1:width, 1:height) = subImg;
    
end

output = image;

end