I = imread('house.tif');
J = immultiply(I,1.2);
subplot(1,2,1);imshow(I);
subplot(1,2,2);imshow(J);
