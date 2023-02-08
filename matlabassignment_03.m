n1 = 10;
n2 = 5;
nf = 0;
ui = input('Choose add/subtract/multiply/divide : ',"s");

switch ui
    case 'add'
        nf = n1+n2;
    case 'subtract'
        nf = n1-n2;
    case 'multiply'
        nf = n1*n2;
    case 'divide'
        nf = n1/n2;
    otherwise
        disp('Please rerun code and select operation')
end

if nf ~= 0
    disp(nf);
end