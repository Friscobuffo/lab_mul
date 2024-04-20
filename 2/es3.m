img = imread('Mammografia.jpg');
E=3.5;
m = 80;
output=1./(1+(m./double(img)+eps).^E);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(output);