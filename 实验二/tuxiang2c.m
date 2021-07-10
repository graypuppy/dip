camera = imread('cameraman.tif');
background = imopen(camera, strel('disk',15));
camera2 = imsubtract(camera, background);
subplot(1,2,1);imshow(camera);
subplot(1,2,2);imshow(camera2);