
f=imread('room.tif');
f=imnoise(f,'gauss',0);
[gv,t1]=edge(f,'roberts','vertical');%ʹ��edge������ͼ��f��ȡ��ֱ�ı�Ե
imshow(gv)
[gb,t2]=edge(f,'roberts','horizontal');%ʹ��edge������ͼ��f��ȡˮƽ�ı�Ե
figure,imshow(gb)
w45=[-2 -1 0;-1 0 1;0 1 2];%ָ��ģ��ʹ��imfilter����45�ȷ���ı�Ե
g45=imfilter(double(f),w45,'replicate');
T=0.3*max(abs(g45(:)));  %�趨��ֵ
g45=g45>=T;           %������ֵ����
figure,imshow(g45);

