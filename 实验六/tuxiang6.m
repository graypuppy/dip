I=imread('number.tif');
imshow(I);               %��ʾԭͼ��
fftI=fft2(I);                %��ά��ɢ����Ҷ�任
sfftI=fftshift(fftI);           %ֱ�������Ƶ�Ƶ������
RR=real(sfftI);            %ȡ����Ҷ�任��ʵ��
II=imag(sfftI);             %ȡ����Ҷ�任���鲿
A=sqrt(RR.^2+II.^2);       %����Ƶ�׷�ֵ
A=(A-min(min(A)))/(max(max(A))-min(min(A)))*225;    %��һ��
figure;                   %�趨����
imshow(A);               %��ʾԭͼ���Ƶ��
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
