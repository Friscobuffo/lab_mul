img = imread("noise1.bmp");
imshow(img);
cropped = imcrop(img, [1, 1, 50, 80]);
figure(2);
imhist(cropped)

%%
load("noise2.mat");
imshow(noise2);
cropped = imcrop(noise2, [1, 1, 50, 80]);
figure(2);
imhist(cropped);

%%
img = imread("noise3.bmp");
imshow(img);
cropped = imcrop(img, [1, 1, 50, 50]);
figure(2);
imhist(cropped);

%%
img = imread("noise3.bmp");
imshow(img);
side = uint8(min(size(img))/10);
dim = size(img);
height = dim(1);
width = dim(2);
best = 1000000;
for i = 1:side:uint8(width/side)*side
    for j = 1:side:uint8(height/side)*side
        cropped = double(imcrop(img, [i, j, side, side]));
        v = var(var(cropped));
        if v<best
            best = v;
            bestCropped = cropped;
        end
    end
end
figure(2)
imhist(uint8(bestCropped))