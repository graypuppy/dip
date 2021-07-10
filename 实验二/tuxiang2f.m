camera = imread('camema.jpg');
camera2 = imread('cameragray.jpg');
Ip = imdivide(camera, camera2);
imshow(Ip);