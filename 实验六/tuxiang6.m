I=imread('number.tif');
imshow(I);               %显示原图像
fftI=fft2(I);                %二维离散傅立叶变换
sfftI=fftshift(fftI);           %直流分量移到频谱中心
RR=real(sfftI);            %取傅立叶变换的实部
II=imag(sfftI);             %取傅立叶变换的虚部
A=sqrt(RR.^2+II.^2);       %计算频谱幅值
A=(A-min(min(A)))/(max(max(A))-min(min(A)))*225;    %归一化
figure;                   %设定窗口
imshow(A);               %显示原图像的频谱
fftA=ifft2(A);
ang=angle(sfftI);
fftang=ifft2(ang);
iA=abs(fftA);
iA= (iA-min(min(iA)))/(max(max(iA))-min(min(iA)));
iang=abs(fftang);
iang=(iang-min(min(iang)))/(max(max(iang))-min(min(iang)));
figure;imshow(iA);
figure;imshow(iA*50);
figure;imshow(iang);
