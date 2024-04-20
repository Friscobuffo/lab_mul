img = (imread("cameraman.tif"));

noise = imnoise(img,"poisson");
img = noise;
[low,high] = frequencies(img);


[low2,high2] = frequencies(low);

oldHigh = high2;
v = max(max(high2))/2;
s = size(high2);
for i = 1:s(1)
    for j = 1:s(2)
        if high2(i,j)<v
            high2(i,j)=0;
        end
    end
end
figure(2);
subplot(1,2,1);
imshow(oldHigh);
subplot(1,2,2);
imshow(high2);