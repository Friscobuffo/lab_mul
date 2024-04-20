name = 'cameraman.tif';
img = imread(name);
ratios = [ 0 0 0 0 0 0 0 0 0 0 ];
for i=10:10:100
    nameI = strcat('cameraman',int2str(i),'.jpg');
    imwrite(img, nameI, 'quality', i);
    ratios(i/10) = calcolaRatio(nameI);
end
plot(ratios);
