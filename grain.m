function [ output_args ] = grain( input_args )
    m = zeros(512, 512, 3);

    r = rand([512, 512, 3]);
    for row = 1:512
        for col = 1:512
            m(row,col, 1) = r(row, col);
            m(row,col, 2) = r(row, col);
            m(row,col, 3) = r(row, col);
        end
    end
    
    m = m - 0.5;
    m = m * 0.5;
    
    output_args = input_args + m;
    
end

