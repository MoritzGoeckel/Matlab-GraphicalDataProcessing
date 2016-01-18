function [ output_args ] = threeDShit( offset )
    ran = rand(512);
    l = ran;
    r = ran;
    img = zeros(512,512,3);
    img(:,:,1) = ran;
    img(:,:,2) = ran;
    img(120:512-120,120:512-120, 1) = img(120:512-120,120 + offset:512 - 120 + offset, 2);
    imshow(img);
end

