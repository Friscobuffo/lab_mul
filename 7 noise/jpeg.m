img = rgb2ycbcr(imread("peppers.png"));

y = img(:,:,1);
cb = img(:,:,2);
cr = img(:,:,3);

cb = cb(1:4:end, 1:4:end);
cr = cr(1:4:end, 1:4:end);

fun = @(block_struct) dct2(block_struct.data);

yblocks = blockproc(y, [8 8], fun);
cbBlocks = blockproc(cb, [8 8], fun);
crBlocks = blockproc(cr, [8 8], fun);

%%
d = size(img);
dim = [0, 0];
dim(1) = uint16(d(1)/8)*8;
dim(2) = uint16(d(2)/8)*8;

d = size(img);
dim = [0, 0];
dim(1) = uint16(d(1)/8)*8;
dim(2) = uint16(d(2)/8)*8;
for i=1:8:dim(1)
    for j=1:8:dim(2)
        
    end
end