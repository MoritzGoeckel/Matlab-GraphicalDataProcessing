function [ output_args ] = threeFromImg( imgIn, offsetIn )
    %img = zeros(512,512,3);
    %img(:,:,1) = imgIn(:,:);
    %img(:,:,2) = imgIn(:,:);
        
    %img(border:512-border,border:512-border, 1) = img(border:512-border,border + offset:512 - border + offset, 2);
       
    [Z S Lol]=size(imgIn);
        
    img = zeros(Z, S, 3);
    for y=1:Z
        for x=1:S
            offset = ((sqrt((y - Z / 2)^2 + (x - S / 2)^2) / (S / 2)));
            
            offset = offset * offsetIn;
            offset = offset - (offsetIn / 2);
            
            roundOffset = round (offset);
            
            if(x + roundOffset < S && x + roundOffset > 0)
                img(y, x, 1) = imgIn(y, x + roundOffset, 1);
                img(y, x, 2) = imgIn(y, x + roundOffset, 2);
                img(y, x, 3) = offset / offsetIn;
            end
        end
    end
    
    imshow(img);
end
