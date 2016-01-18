function [ output_args ] = rgbToHsi( input_args )
        magicMatrix = [2/sqrt(6), 0, 1/sqrt(3); -1/sqrt(6), 1/sqrt(2), 1/sqrt(3); -1/sqrt(6), -1/sqrt(2), 1/sqrt(3)];
        mmi = input_args * magicMatrix;
        
        m1 = mmi(1);
        m2 = mmi(2);
        i1 = mmi(3);
        
        H = 1/2*pi*atan(m2/m1);
        S = sqrt(3/2*(m1^2 + m2^2));
        I = 1/sqrt(3)*i1;
                
        output_args = [H S I];
end

