function [ output ] = myWavelet( image )
    output = subWayve(image);
    output = output.';
    output = subWayve(output);
    output = output.';
end

function [ output ] = subWayve(image)

    [height width lol]=size(image);
    output = zeros(height, width);

    for line=1:height
        for n=0:width / 2
            
            if 2 * n == width
                break;
            end
            
            output(line, n + 1) = (image(line, 2 * n + 1) + image(line, 2 * n + 2)) / 2;
        end
    end
    
    for line=1:height
        for n=0:width / 2
            
            if 2 * n == width
                break;
            end
            
            output(line, n + 1 + width / 2) = 0.5 + image(line, 2 * n + 1) - image(line, 2 * n + 2);
        end
    end
end