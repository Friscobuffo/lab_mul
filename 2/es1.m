img = 255-imread('Mammografia.jpg');
output = PotImg(img, 0.0, 1.0, 1.6);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(output);