img = imread("cameraman.tif");
s = size(img);
sigma = 30;

dist = distmatrix(s(1), s(2));
H_gauss = exp(-(dist.^2)/(2*(sigma^2)));

imshowpair(img, ifft2(fft2(img) .* H_gauss), "montage");

n = 3;
D0 = 35;
H_but = 1./(1+(dist./D0).^(2*n));

figure(2);
imshowpair(img, ifft2(fft2(img) .* H_but), "montage");