function [output] = soglia2(sub)
avg = mean(sub);
temp = sub >= avg;
output = sub .* temp;

temp = output == 0;
temp = temp .* avg;
output = output + temp;
end