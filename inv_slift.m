function [ out ] = inv_slift( in )

    % "geliftete S-Transformation"

    l = in(1:end / 2,:);
    h = in(end / 2+1:end,:) - 128;

    c2n = l-floor(h/2);
    c2n1 = h+c2n;

    out = in;
    out(1:2:end,:) = c2n;
    out(2:2:end,:) = c2n1;

end