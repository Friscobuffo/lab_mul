img = imread("peppers.png");
[LL, ~, ~, ~] = dwt2(img, "haar");
figure(1)
z = zeros(size(LL));
img = uint8(idwt2(LL, z, z, z, "haar"));
imshow(img)

%%
figure(2)
[LL2, ~, ~, ~] = dwt2(LL, "haar");
z = zeros(size(LL2));
img = uint8(idwt2(LL2, z, z, z, "haar"));
imshow(img)

%%
figure(3)
[LL3, ~, ~, ~] = dwt2(LL2, "haar");
z = zeros(size(LL3));
imshow(uint8(idwt2(LL3, z, z, z, "haar")))