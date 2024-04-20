function [output] = binToDec(array)
i = 0;
output = 0;
while i<8
    output = output + array(8-i)*2^i;
    i = i + 1;
end
end