I=imread('Plane2.jpg');
imshow(I);
level = graythresh(I);                 %�õ����ʵ���ֵ
bw = im2bw(I,level);                   %��ֵ��
figure,imshow(bw);
SE = strel('square',3);                %�������ͽṹԪ��
BW1 = imdilate(bw,SE);                 %����
figure,imshow(BW1);
SE1 = strel('arbitrary',eye(5));       %���ø�ʴ�ṹԪ��
BW2 = imerode(bw,SE1);                 %��ʴ
figure,imshow(BW2);
BW3 = bwmorph(bw, 'open');              %������
figure,imshow(BW2);
BW4 = bwmorph(bw, 'close');             %������
figure,imshow(BW4);
% imshow(I);
% figure,imshow(bw);
% figure,imshow(BW1);
% figure,imshow(BW2);
% figure,imshow(BW3);
% figure,imshow(BW4);
%  
