function [output] = decToBin(num)
output = [ 0 0 0 0 0 0 0 0 ];
i = 8;
while i>0
    output(i) = mod(num, 2);
    i = i - 1;
    num = floor(num/2);
end
end