I = imread('flow.tif');%Í¼2.1ÖÐ×ó±ßÊÇflow.tif
J = imread('cross.tif');
K = imadd(I,J);
imshow(K);