function[Xk]=dft(xn,N)
n=[0:1:N-1]; %n ��������
k=[0:1:N-1]; %k ��������
WN=exp(-j*2*pi/N); % ��ת����
nk=n'*k; % ����һ����nk ֵ��N��Nά����
WNnk=WN.^nk; %DFT ����
Xk=xn*WNnk; %DFT ϵ����������
