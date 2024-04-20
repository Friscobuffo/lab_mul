function [output] = soglia(sub)
avg = mean(sub);
temp = sub >= avg;
output = sub .* temp;
end