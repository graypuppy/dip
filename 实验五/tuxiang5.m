I=imread('electric.tif');

J = imnoise(I,'gauss',0.02);              %��Ӹ�˹����
ave1=fspecial('average',3);              %����3��3�ľ�ֵģ��
ave2=fspecial('average',5);              %����5��5�ľ�ֵģ��
K = filter2(ave1,J)/255;                 %��ֵ�˲�3��3
L = filter2(ave2,J)/255;                 %��ֵ�˲�5��5
M = medfilt2(J,[3 3]);                  %��ֵ�˲�3��3ģ��
N = medfilt2(J,[4 4]);                   %��ֵ�˲�4��4ģ��
%imshow(I);
figure,imshow(J);
figure,imshow(K);
figure,imshow(L);
figure,imshow(M);
figure,imshow(N);

I=imread('electric.tif');
J = imnoise(I,'salt & pepper',0.02);        %��ӽ�������   
ave1=fspecial('average',3);              %����3��3�ľ�ֵģ��
ave2=fspecial('average',5);              %����5��5�ľ�ֵģ��
K = filter2(ave1,J)/255;                 %��ֵ�˲�3��3
L = filter2(ave2,J)/255;                 %��ֵ�˲�5��5
M = medfilt2(J,[3 3]);                  %��ֵ�˲�3��3ģ��
N = medfilt2(J,[4 4]);                   %��ֵ�˲�4��4ģ��
%imshow(I);
figure,imshow(J);
figure,imshow(K);
figure,imshow(L);
figure,imshow(M);
figure,imshow(N);
