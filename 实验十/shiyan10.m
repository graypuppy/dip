I=imread('Plane2.jpg');
imshow(I);
level = graythresh(I);                 %得到合适的阈值
bw = im2bw(I,level);                   %二值化
figure,imshow(bw);
SE = strel('square',3);                %设置膨胀结构元素
BW1 = imdilate(bw,SE);                 %膨胀
figure,imshow(BW1);
SE1 = strel('arbitrary',eye(5));       %设置腐蚀结构元素
BW2 = imerode(bw,SE1);                 %腐蚀
figure,imshow(BW2);
BW3 = bwmorph(bw, 'open');              %开运算
figure,imshow(BW2);
BW4 = bwmorph(bw, 'close');             %闭运算
figure,imshow(BW4);
% imshow(I);
% figure,imshow(bw);
% figure,imshow(BW1);
% figure,imshow(BW2);
% figure,imshow(BW3);
% figure,imshow(BW4);
%  
