img = (imread("cameraman.tif"));

noise = imnoise(img,"poisson");
img = noise;
[low,high] = frequencies(img);

figure(1);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(low);
subplot(1,3,3);
imshow(high);

oldHigh = high;
v = max(max(high))/2;
s = size(high);
for i = 1:s(1)
    for j = 1:s(2)
        if high(i,j)<v
            high(i,j)=0;
        end
    end
end
figure(2);
subplot(1,2,1);
imshow(oldHigh);
subplot(1,2,2);
imshow(high);