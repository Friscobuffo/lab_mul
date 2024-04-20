img = imread('peppers.png');

with_noise = img;
with_noise(:,:,1) = imnoise(img(:,:,1), 'salt & pepper');
figure;
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(with_noise);

img2 = rgb2hsv(imread('peppers.png'));
img2(:,:,1) = imnoise(img2(:,:,1), 'gaussian', 0, sqrt(0.8));
size(img2)
output = hsv2rgb(img2);

subplot(1,3,3);
imshow(output);

