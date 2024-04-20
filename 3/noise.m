img = imread('Lena.bmp');
img = imnoise(img);
filter = fspecial('average');
filtered_img = imfilter(img, filter);
median_filtered = medfilt2(img, [5 5]);
figure;
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(filtered_img);
subplot(1,3,3);
imshow(median_filtered);