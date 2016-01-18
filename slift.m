function [ out ] = slift( in )

    % "geliftete S-Transformation"

    c2n = in(1:2:end,:);
    c2n1=in(2:2:end,:);

    h=c2n1-c2n;
    l=c2n+floor(h/2);

    out = [l;h + 128];

end