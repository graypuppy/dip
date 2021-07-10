I=imread('flower.tif');  % 读入原图像,tif格式
whos I                 % 显示图像I的基本信息
imshow(I)              % 显示图像

% 这种格式知识用于jpg格式，压缩存储图像，q是0-100之间的整数
imfinfo flower.tif
imwrite(I,'flower.jpg','quality',50); 
imwrite(I,'flower.bmp');      % 以位图（BMP）的格式存储图像
F=imread('Lenna.jpg');
H=imread('camema.jpg');
imfinfo Lenna.jpg
imfinfo camema.jpg
figure(2),imshow('Lenna.jpg')
figure(3),imshow('camema.jpg')
gg=im2bw(F);         % 将图像转为二值图像
gH=im2bw(H);
figure(4), imshow(gg)
figure(5), imshow(gH)