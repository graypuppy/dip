I=imread('flow.tif');
A = double(I)/255;
I3=imread('cross.tif');
A3 = double(I3)/255;K = imlincomb(2,A,3,A3);
imshow(K);
