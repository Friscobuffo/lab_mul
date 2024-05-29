function [output] = difference(matrix1,matrix2)
d = matrix1-matrix2;
output = sum(abs(d), "all");
end

