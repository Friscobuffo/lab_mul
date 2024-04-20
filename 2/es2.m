img = imread('Mammografia.jpg');
output = LogImg(img);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(output);