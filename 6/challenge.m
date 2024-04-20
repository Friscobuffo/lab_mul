img = double(imread("BarbaraNoise.bmp"));
original = double(imread("Barbara.bmp"));
n = size(img);
z = zeros(n(1)/2);
z2 = zeros(n(1)/4);

[peak,worst] = psnr(img, original);
[LL, LH, HL, HH] = dwt2(img, "haar");

result = idwt2(LL, z, HL, z, "haar");
[peak,best] = psnr(result, original);


[LL2, LH2, HL2, HH2] = dwt2(LL, "haar");

LL = idwt2(LL2, LH2, HL2, HH2, "haar");
result = idwt2(LL, LH, HL, HH, "haar");

[peak,snr1] = psnr(result, original);