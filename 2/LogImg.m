function [output] = LogImg(f)
f = double(f)/255.0;
output=uint8(255*log10(1+9*f));
end

