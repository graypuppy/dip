I = imread('flow.tif');%ͼ2.1�������flow.tif
J = imread('cross.tif');
K = imadd(I,J);
imshow(K);