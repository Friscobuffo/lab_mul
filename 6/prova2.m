original = double(imread("Barbara.bmp"));

[LL, LH, HL, HH] = dwt2(original, "haar");
[LL2, LH2, HL2, HH2] = dwt2(LL, "haar");

n = size(LL);
z = zeros(n(1)/2);
z2 = zeros(n(1));

LL_ = idwt2(LL2, LH2, HL2, z, "haar");

img = idwt2(LL_, LH, HL, HH, "haar");
img2 = idwt2(LL, LH, HL, z2, "haar");
imshowpair(img, img2, "montage");
