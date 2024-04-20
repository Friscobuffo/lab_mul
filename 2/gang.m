clc
clear all
close all

img = rgb2gray(imread('base.jpg'));
original = imread('cameraman.tif');

E=8.5;
m = 80;
img = 1./(1+(m./(double(img)+eps)).^E);

img = imresize(img, size(original));
s = size(img);
for i = 1:s(1)
    for j = 1:s(2)
        if img(i,j) < 0.5
            img(i,j) = 0;
        else
            img(i,j) = 1;
        end
    end
end

difference = uint8(mod(original, 2));
difference = reshape(difference, [256 256]);
original = original - difference;
original = original + uint8(img);

imwrite(original, 'cards.tif');

plotLevels(original);
