f=imread('room1.tif');
F=fft2(f);             %��ͼ����и���Ҷ�任

%�Ա任��ͼ����ж����仯������������ƽ�ƣ�ʹ�����Ļ�
S=fftshift(log(1+abs(F)));
S=gscale(S);             %��Ƶ��ͼ������0-256�ķ�Χ��
figure
subplot 121;imshow(f);
title(' ԭʼͼ��')
subplot 122;imshow(S) % ��ʾƵ��ͼ��
title(' ԭʼͼ���Ƶ��')
h=fspecial('sobel');        %�����ռ䡮sobel��ģ��
freqz2(h)               %�鿴��ӦƵ���˲�����ͼ��
PQ=paddedsize(size(f));   %�����˲�ʱ�����С�ľ���
H=freqz2(h,PQ(1),PQ(2)); %����Ƶ���еġ�sobel���˲���
H1=ifftshift(H);         %�����������У�ʹ��ԭ��λ��Ƶ�ʾ�������Ͻ�
figure
subplot 121;imshow(abs(H),[]) % ��ͼ����ʽ��ʾ�˲���
title(' �ռ��˲���')
subplot 122;imshow(abs(H1),[])
title(' �ռ��˲�����λ���Ƶ��')
gs=imfilter(double(f),h);  %��ģ��h���п����˲�
gf=dftfilt(f,H1);         %���˲�����ͼ�����Ƶ���˲�
subplot 221;imshow(gs,[])
title(' ��ģ��h ���п����˲����ͼ��')
subplot 223;imshow(gf,[])
title(' ��ͼ�����Ƶ���˲����ͼ��')
subplot 222;imshow(abs(gs),[])
title(' ����ͼ��')
subplot 224;imshow(abs(gf),[])
title(' ����ͼ��')


f=imread('number.tif');   %��ȡͼƬ
PQ=paddedsize(size(f));  %�����˲�ʱ�����С�ľ���
D0=0.05*PQ(1);        %�趨��˹��ͨ�˲�������ֵ
H=hpfilter('gaussian',PQ(1),PQ(2),D0);    %������˹��ͨ�˲���
g=dftfilt(f,H);                        %��ͼ������˲�
figure
subplot 121;imshow(f) % ��ʾԭͼ��
title(' ԭʼͼ��')
subplot 122;imshow(g,[]) % ��ʾ�˲���ͼ��
title(' ��˹��ͨ�˲���������ͼ��')
