f=imread('medicine_pic.jpg');
imhist(f,256);            %��ʾ��ֱ��ͼ
g1=imadjust(f,[0 1],[1 0]);    %�Ҷ�ת����ʵ������ת��(��Ƭͼ��)
figure,imshow(g1)

%��0.5��0.75�ĻҶȼ���չ����Χ[0 1]
g2=imadjust(f,[0.5 0.75],[0 1]);
figure,imshow(g2)
g=imread('point.jpg');
h=log(1+double(g));           %������ͼ�����ӳ��任
h=mat2gray(h);               %������hת��Ϊ�Ҷ�ͼƬ
h=im2uint8(h);               %���Ҷ�ͼת��Ϊ8λͼ
figure,imshow(h)
