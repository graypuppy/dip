I=imread('electric.tif');

J = imnoise(I,'gauss',0.02);              %添加高斯噪声
ave1=fspecial('average',3);              %产生3×3的均值模版
ave2=fspecial('average',5);              %产生5×5的均值模版
K = filter2(ave1,J)/255;                 %均值滤波3×3
L = filter2(ave2,J)/255;                 %均值滤波5×5
M = medfilt2(J,[3 3]);                  %中值滤波3×3模板
N = medfilt2(J,[4 4]);                   %中值滤波4×4模板
%imshow(I);
figure,imshow(J);
figure,imshow(K);
figure,imshow(L);
figure,imshow(M);
figure,imshow(N);

I=imread('electric.tif');
J = imnoise(I,'salt & pepper',0.02);        %添加椒盐噪声   
ave1=fspecial('average',3);              %产生3×3的均值模版
ave2=fspecial('average',5);              %产生5×5的均值模版
K = filter2(ave1,J)/255;                 %均值滤波3×3
L = filter2(ave2,J)/255;                 %均值滤波5×5
M = medfilt2(J,[3 3]);                  %中值滤波3×3模板
N = medfilt2(J,[4 4]);                   %中值滤波4×4模板
%imshow(I);
figure,imshow(J);
figure,imshow(K);
figure,imshow(L);
figure,imshow(M);
figure,imshow(N);
