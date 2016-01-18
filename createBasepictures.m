function [ output ] = createBasepictures( L, R )
    
    border = 1;

    output = zeros(L * R + border * (L - 1), L * R + border * (R - 1));
    output = output + 0.5 + 0.5i;
    
    for u=0:L-1
        for v=0:R-1
            offsetX = border * u;
            offsetY = border * v;
            
            output(u*L + 1 + offsetX:u*L+L + offsetX, v*R + 1 + offsetY:v*R+R + offsetY) = createBasepicture(u, v, L, R);
        end
    end

end