img = imnoise(imread("cameraman.tif"), "poisson");

[low, high] = frequencies(img);

low = imresize(low, 0.25);
low = imresize(low, 4, "bilinear");

result = low + high;
figure(1);
subplot(1, 2, 1);
imshow(img);
subplot(1, 2, 2);
imshow(result);

figure(2);
imshow(img - result);