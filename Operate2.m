function z = Operate2(x,y,operation)
    operation = upper(operation);
    switch operation
    case 'ADD'
        z = x+y;
    case 'SUBTRACT'
        z = x-y;
    case 'MULTIPLY'
        z = x*y;
    case 'DIVIDE'
        z = x/y;
    otherwise
        disp('Please rerun code and select operation')
    end
end