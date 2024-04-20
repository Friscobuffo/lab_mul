function [output] = plotLevels(image)
imshow(image);
figure;
for i = 1:8
    output(:,:,i) = 255*mod(image, 2);
    image = floor(image/2);
    subplot(2,4,9-i);
    imshow(output(:,:,i));
    title(['bit ',num2str(8-i)]);
end
end