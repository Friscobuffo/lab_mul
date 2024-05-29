function [motionX,motionY] = compareWindow(image,windowX,windowY,window)
windowSize = size(window);
dim = size(image);
best = [windowX,windowY];
bestValue = difference(image(windowX:windowX+windowSize(1)-1, windowY:windowY+windowSize(2)-1), window);
slide = 4;
for i = windowX-slide : windowX+slide
    if i<1 || i>dim(1)-windowSize(1)
        continue
    end
    for j = windowY-slide : windowY+slide
        if j<1 || j>dim(2)-windowSize(2)
            continue
        end
        currValue = difference(image(i:i+windowSize(1)-1, j:j+windowSize(2)-1), window);
        if currValue<bestValue
            bestValue = currValue;
            best = [i,j];
        end
    end
end
motionX = best(1)-windowX;
motionY = best(2)-windowY;
end

