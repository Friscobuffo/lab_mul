image = imread('cameraman.tif');
image = putSecret(image,"SECRET");
imwrite(image, "imagesecret.jpg", 'quality', 80);
image = imread("imagesecret.jpg");
result = plotLevels(image);