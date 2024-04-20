function [imageWithSecret] = putSecret(originalImg,secret)
difference = mod(originalImg, 2);
originalImg = originalImg - difference;
figure;
axes;
text(0.5, 0.5, secret, 'FontSize', 60, 'HorizontalAlignment', 'center');
set(gca, 'Visible', 'off');
f = getframe(gcf);
imageText = f.cdata;
close;
imageText = rgb2gray(imresize(imageText, [256,256]));
for i=1:256
    for j=1:256
        if imageText(i,j)<100
            originalImg(i,j) = originalImg(i,j)+1;
        end
    end
end
imageWithSecret = originalImg;
end