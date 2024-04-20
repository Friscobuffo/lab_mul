img = imread('peppers.png');
img2 = rgb2hsv(img);
min(min(img2(:,:,1)))
max(max(img2(:,:,1)))

filter = fspecial('average');
img2(:,:,1) = imfilter(img2(:,:,1), filter);

output = hsv2rgb(img2);

imshow(output);

