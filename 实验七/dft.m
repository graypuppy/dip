function[Xk]=dft(xn,N)
n=[0:1:N-1]; %n 的行向量
k=[0:1:N-1]; %k 的行向量
WN=exp(-j*2*pi/N); % 旋转因子
nk=n'*k; % 产生一个含nk 值的N乘N维矩阵
WNnk=WN.^nk; %DFT 矩阵
Xk=xn*WNnk; %DFT 系数的行向量
