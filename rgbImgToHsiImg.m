function [ output_args ] = rgbImgToHsi( input_args )
        magicMatrix = [2/sqrt(6), 0, 1/sqrt(3);
            -1/sqrt(6), 1/sqrt(2), 1/sqrt(3);
            -1/sqrt(6), -1/sqrt(2), 1/sqrt(3)];
        
        mmi = input_args(:,:) * magicMatrix;
        
        hsi = [1/2*pi*atan(mmi(:,:,2)/mmi(:,:,1)),
            sqrt(3/2*(mmi(:,:,1)^2 + mmi(:,:,2)^2)),
            1/sqrt(3)*mmi(:,:,3)];
                       
        output_args = hsi;
end
        
