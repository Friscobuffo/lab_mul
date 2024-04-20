img = imread('Lena.bmp');
dim = size(img);
for i = 1:dim(2)
    img(100,i) = 255;
    img(101,i) = 255;
end
filter = fspecial('average');
filtered_img = imfilter(img, filter);
median_filtered = medfilt2(img, [3 3]);

figure;
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(filtered_img);
subplot(1,3,3);
imshow(median_filtered);