function [ output ] = createBasepicture( u, v, L, R )

    output = zeros(L, R);

    for x=0:L-1
        for y=0:R-1
            output(x + 1, y + 1) = exp(1i * 2 * pi * u * x / L) * exp(1i * 2 * pi * v * y / R);
        end
    end

end

