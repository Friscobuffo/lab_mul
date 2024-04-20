figure(1)
I = imread('cameraman.tif');
imshow(I, []);
title("Original Image");
I = double(I);

F = fft2(I);

s = size(F);
filter = double(fftshift(distmatrix(s(1), s(2)) < 35));

filteredF = ifftshift(fftshift(F) .* filter);
r = real(ifft2(filteredF));
imshow(r, []);


mod = fftshift(abs(F));
phase = angle(F);
mod = ifftshift(mod .* filter);
F = mod .* (cos(phase) + 1i*sin(phase));
imshow(ifft2(F), []);
