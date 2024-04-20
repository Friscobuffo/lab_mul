original = double(imread("Barbara.bmp"));
%noised = imread("BarbaraNoise.bmp");

[LL, LH, HL, HH] = dwt2(original, "haar");

%img = idwt2(LL, LH, HL, HH, "haar");
%imshowpair(original, img, "montage");

max(max(double(original)-img))

n = size(original);
z = zeros(n(1)/2);

noised = idwt2(LL, LH, HL, z, "haar");
[peak,snr] = psnr(noised, original);
imshowpair(original, noised, "montage");
snr

noised = idwt2(LL, z, z, HH, "haar");
[peak,snr] = psnr(noised, original);
imshowpair(original, noised, "montage");
snr

noised = idwt2(z, LH, HL, HH, "haar");
[peak,snr] = psnr(noised, original);
imshowpair(original, noised, "montage");
snr

noised = idwt2(LL, z, z, z, "haar");
[peak,snr] = psnr(noised, original);
imshowpair(original, noised, "montage");
snr

LL2 = soglia(LL);
HH2 = soglia(HH);
LH2 = soglia(LH);
HL2 = soglia(HL);

LL3 = soglia2(LL);
HH3 = soglia2(HH);
LH3 = soglia2(LH);
HL3 = soglia2(HL);

imshowpair(idwt2(LL2, LH2, HL2, HH2, "haar"), idwt2(LL3, LH3, HL3, HH3, "haar"), "montage");

bab = double(imresize(imread("Baboon.bmp"), 0.5, "bilinear"));
figure(2)
imshow(idwt2(LL, LH, HL+bab, HH, "haar"), []);