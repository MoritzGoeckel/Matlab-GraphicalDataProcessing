function [ output_args ] = Histogramm2D( img1, img2, resolution )
    result = zeros(resolution, resolution);
    
    max = 0;
    
    [Z,S]=size(img1);    
    for y=1:Z
        for x=1:S
            value1 = floor(img1(x, y) * resolution);
            value2 = floor(img2(x, y) * resolution);
            
            if(value1 == 0)
                value1 = 1;
            end
            
            if(value2 == 0)
                value2 = 1;
            end
            
            result(value1, value2) = result(value1, value2) + 1;
            
            if(result(value1, value2) > max)
                max = result(value1, value2);
            end
        end
    end
    
    result = result / max;
    
    output_args = result;
end

