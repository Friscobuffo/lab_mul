function [output] = PotImg(f, low_out, high_out, gamma)
low_in = 0.0;
high_in = 1.0;
output=imadjust(f, [low_in high_in], [low_out high_out], gamma);
end

