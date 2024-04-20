img = imread('Baboon.bmp');
prewitt = edge(img, 'prewitt');
sobel = edge(img, 'sobel');
canny = edge(img, 'canny');

figure;
subplot(1,3,1);
imshow(prewitt);
subplot(1,3,2);
imshow(sobel);
subplot(1,3,3);
imshow(canny);

img = imnoise(img);
prewitt = edge(img, 'prewitt');
sobel = edge(img, 'sobel');
canny = edge(img, 'canny');

figure;
subplot(1,3,1);
imshow(prewitt);
subplot(1,3,2);
imshow(sobel);
subplot(1,3,3);
imshow(canny);