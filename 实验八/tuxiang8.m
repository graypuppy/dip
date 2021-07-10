clc
clear all;

rgb_image=imread('rose.tif');
fR=rgb_image(:,:,1);
imwrite(fR,'v1_red.jpg');
fG=rgb_image(:,:,2);
imwrite(fR,'v1_green.jpg');
fB=rgb_image(:,:,3);
imwrite(fR,'v1_blue.jpg');
figure(1);
subplot(1,3,1),imshow(fR)
subplot(1,3,2),imshow(fG)
subplot(1,3,3),imshow(fB)

yiq_image=rgb2ntsc(rgb_image);
fY=yiq_image(:,:,1);
fI=yiq_image(:,:,2);
fQ=yiq_image(:,:,3);
figure(2);
subplot(2,3,1),imshow(fY),title('亮度')
subplot(2,3,2),imshow(fI),title('色调')
subplot(2,3,3),imshow(fQ),title('饱和度')

GR=histeq(fR,256);
GG=histeq(fG,256);
GB=histeq(fB,256);
RGB_image=cat(3,GR,GG,GB);
figure(3)
subplot(2,2,1),imshow(GR),title('histeq 直方图均衡后的fR')
subplot(2,2,2),imshow(GG),title('histeq 直方图均衡后的fG')
subplot(2,2,3),imshow(GB),title('histeq 直方图均衡后的fB')
subplot(2,2,4),imshow(RGB_image),title('histeq 直方图均衡后的合成图像')
figure(4),subplot(1,2,1);
imhist(fR,64);
title('原图像直方图R')
subplot(1,2,2);
imhist(GR,64);
title('均衡化后的图像直方图R');
figure(5),subplot(1,2,1);
imhist(fG,64);
title('原图像直方图G')
subplot(1,2,2);
imhist(GG,64);
title('均衡化后的图像直方图G');
figure(6),subplot(1,2,1);
imhist(fB,64);
title('原图像直方图B')
subplot(1,2,2);
imhist(GB,64);
title('均衡化后的图像直方图B');

f1=imread('v1_red.jpg');
f2=imread('v1_green.jpg');
f3=imread('v1_blue.jpg');

ture_color=cat(3,f1,f2,f3);
figure,imshow(ture_color)

I=imread('v1_red.jpg');
I=double(I);
[m,n]=size(I);L=256;
for i=1:m
    for j=1:n
        if I(i,j)<L/4
            R(i,j)=0;
            G(i,j)=4*I(i,j);
            B(i,j)=L;
else if I(i,j)<=L/2
        R(i,j)=0;
G(i,j)=L;
B(i,j)=-4*I(i,j)+2*L;
    else if I(i,j)<=3*L/4
            R(i,j)=4*I(i,j)-2*L;
            G(i,j)=L;
B(i,j)=0;
        else
            R(i,j)=L;
G(i,j)=-4*I(i,j)+4*L;
B(i,j)=0;
        end
    end
        end
    end
end
for i=1:m
    for j=1:n
G2C(i,j,1)=R(i,j);
G2C(i,j,2)=G(i,j);
G2C(i,j,3)=B(i,j);
    end
end
G2C=G2C/256;
imwrite(G2C,'infer_near.jpg');figure(7),imshow(G2C)
F4=imread('infer_near.jpg');
f4=F4(:,:,1);
false_color=cat(3,f4,f2,f3);
figure,imshow(false_color)

f=imread('Lenna.jpg');
figure,imshow(f),colormap(hot)
cut_1=imadjust(f,[0.0925 0.5],[0.0925 0.5]);
cut_2=imadjust(f,[0.5 1],[0.5 1]);
figure,imshow(cut_1),colormap(hot) 
figure,imshow(cut_2),colormap(cool)