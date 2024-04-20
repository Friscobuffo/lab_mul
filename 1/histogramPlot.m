img = rgb2gray(imread('peppers.png'));
vec = zeros(256,1);
for i = 0:255
    res = size(find(img==i),1);
    vec(i+1) = res;
end
bar(vec);
figure;
imwrite(img, "ziopera.jpg", 'quality', 10);
img = imread("ziopera.jpg");
imhist(img);

figure;
imwrite(img, "ziopera2.jpg", 'quality', 10);
img = imread("ziopera2.jpg");
imhist(img);