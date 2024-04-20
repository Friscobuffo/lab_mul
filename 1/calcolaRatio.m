function [ratio] = calcolaRatio(imageName)
info = imfinfo(imageName);
size = info.FileSize;
width = info.Width;
height = info.Height;
bitDepth = info.BitDepth;
ratio = (width*height*bitDepth/8)/size;
end

