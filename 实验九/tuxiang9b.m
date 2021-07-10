
f=imread('room.tif');
f=imnoise(f,'gauss',0);
[gv,t1]=edge(f,'roberts','vertical');%使用edge函数对图像f提取垂直的边缘
imshow(gv)
[gb,t2]=edge(f,'roberts','horizontal');%使用edge函数对图像f提取水平的边缘
figure,imshow(gb)
w45=[-2 -1 0;-1 0 1;0 1 2];%指定模版使用imfilter计算45度方向的边缘
g45=imfilter(double(f),w45,'replicate');
T=0.3*max(abs(g45(:)));  %设定阈值
g45=g45>=T;           %进行阈值处理
figure,imshow(g45);

