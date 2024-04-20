image = imread('cameraman.tif');
image = putSecret(image,"SECRET");
result = plotLevels(image);