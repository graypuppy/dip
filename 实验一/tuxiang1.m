I=imread('flower.tif');  % ����ԭͼ��,tif��ʽ
whos I                 % ��ʾͼ��I�Ļ�����Ϣ
imshow(I)              % ��ʾͼ��

% ���ָ�ʽ֪ʶ����jpg��ʽ��ѹ���洢ͼ��q��0-100֮�������
imfinfo flower.tif
imwrite(I,'flower.jpg','quality',50); 
imwrite(I,'flower.bmp');      % ��λͼ��BMP���ĸ�ʽ�洢ͼ��
F=imread('Lenna.jpg');
H=imread('camema.jpg');
imfinfo Lenna.jpg
imfinfo camema.jpg
figure(2),imshow('Lenna.jpg')
figure(3),imshow('camema.jpg')
gg=im2bw(F);         % ��ͼ��תΪ��ֵͼ��
gH=im2bw(H);
figure(4), imshow(gg)
figure(5), imshow(gH)