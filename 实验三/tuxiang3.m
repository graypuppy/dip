f=imread('medicine_pic.jpg');
imhist(f,256);            %显示其直方图
g1=imadjust(f,[0 1],[1 0]);    %灰度转换，实现明暗转换(负片图像)
figure,imshow(g1)

%将0.5到0.75的灰度级扩展到范围[0 1]
g2=imadjust(f,[0.5 0.75],[0 1]);
figure,imshow(g2)
g=imread('point.jpg');
h=log(1+double(g));           %对输入图像对数映射变换
h=mat2gray(h);               %将矩阵h转换为灰度图片
h=im2uint8(h);               %将灰度图转换为8位图
figure,imshow(h)
