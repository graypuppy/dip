f=imread('room.tif');
[gv,t1]=edge(f,'log','vertical');%ʹ��edge������ͼ��f��ȡ��ֱ�ı�Ե
imshow(gv)
[gb,t2]=edge(f,'log','horizontal');%ʹ��edge������ͼ��f��ȡˮƽ�ı�Ե
figure,imshow(gb)
w45=[-2 -1 0;-1 0 1;0 1 2];%ָ��ģ��ʹ��imfilter����45�ȷ���ı�Ե
g45=imfilter(double(f),w45,'replicate');
T=0.3*max(abs(g45(:)));  %�趨��ֵ
g45=g45>=T;           %������ֵ����
figure,imshow(g45);
