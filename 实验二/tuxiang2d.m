camera = imread('cameraman.tif');
camera2 = imsubtract(camera, 50);%这里的50就是那个常数
subplot(1,2,1);imshow(camera);
subplot(1,2,2);imshow(camera2);
