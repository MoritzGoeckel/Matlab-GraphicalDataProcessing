function [ output_args ] = entropie( input_args )

    img = input_args;
    [x,y]=size(img);
    img = reshape(img, [x * y, 1]);

    map = containers.Map();
    
    points = x * y;
    
    'Create hashmap'
    for i = 1:points
        key = num2str(img(i));
        if map.isKey(key)
            map(key) = map(key) + 1;
        else
            map(key) = 1;
            strcat('New Value ', key)
        end
    end
    
    keys = map.keys;
    values = map.values;
    
    f = 0;
    
    'Start calc'
    for i = 1:map.Count
        relQuant = values{i} / points;
        f = f + (relQuant * log2(relQuant));
    end
    
    f = -f;
    
    output_args = f;
    
end

