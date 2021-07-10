f=imread('room1.tif');
F=fft2(f);             %对图像进行傅立叶变换

%对变换后图像进行队数变化，并对其坐标平移，使其中心化
S=fftshift(log(1+abs(F)));
S=gscale(S);             %将频谱图像标度在0-256的范围内
figure
subplot 121;imshow(f);
title(' 原始图像')
subplot 122;imshow(S) % 显示频谱图像
title(' 原始图像的频谱')
h=fspecial('sobel');        %产生空间‘sobel’模版
freqz2(h)               %查看相应频域滤波器的图像
PQ=paddedsize(size(f));   %产生滤波时所需大小的矩阵
H=freqz2(h,PQ(1),PQ(2)); %产生频域中的‘sobel’滤波器
H1=ifftshift(H);         %重排数据序列，使得原点位于频率矩阵的左上角
figure
subplot 121;imshow(abs(H),[]) % 以图形形式显示滤波器
title(' 空间滤波器')
subplot 122;imshow(abs(H1),[])
title(' 空间滤波器移位后的频谱')
gs=imfilter(double(f),h);  %用模版h进行空域滤波
gf=dftfilt(f,H1);         %用滤波器对图像进行频域滤波
subplot 221;imshow(gs,[])
title(' 用模版h 进行空域滤波后的图像')
subplot 223;imshow(gf,[])
title(' 对图像进行频域滤波后的图像')
subplot 222;imshow(abs(gs),[])
title(' 幅度图像')
subplot 224;imshow(abs(gf),[])
title(' 幅度图像')


f=imread('number.tif');   %读取图片
PQ=paddedsize(size(f));  %产生滤波时所需大小的矩阵
D0=0.05*PQ(1);        %设定高斯高通滤波器的阈值
H=hpfilter('gaussian',PQ(1),PQ(2),D0);    %产生高斯高通滤波器
g=dftfilt(f,H);                        %对图像进行滤波
figure
subplot 121;imshow(f) % 显示原图像
title(' 原始图像')
subplot 122;imshow(g,[]) % 显示滤波后图像
title(' 高斯高通滤波器处理后的图像')
