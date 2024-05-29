img = imread("peppers.png");
imwrite(img, "original.png", "png");

originalSize = dir("original.png").bytes;

compressionRatios = zeros([1, 100]);
psnrJpeg = zeros([1, 100]);
psnrJpeg2000 = zeros([1, 100]);

for i=1:1:100
    fileName = "img"+i+".jpeg";
    imwrite(img, fileName, "jpeg", "Quality", i);
    compressionRatios(i) = originalSize / double(dir(fileName).bytes);
    psnrJpeg(i) = psnr(imread(fileName), img);
    delete(fileName);

    fileName = "img"+i+".jp2";
    imwrite(img, fileName, "jp2", "CompressionRatio", compressionRatios(i));
    psnrJpeg2000(i) = psnr(imread(fileName), img);
    delete(fileName);
end

ratioPsnr = zeros([1, 100]);
for i=1:100
    ratioPsnr(i) = psnrJpeg2000(i) / psnrJpeg(i);
end

%%
plot(1:100, ratioPsnr);