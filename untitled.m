
clc

clear all

close all

a=rgb2gray(imread('Ini.jpg'));

imshow(a);

b=rgb2gray(imread('gg.jpg'));

imshow(b);

cross=normxcorr2(b,a);

imshow(cross)

figure,surf(cross),shading flat

[y x]=find(cross>=0.96*max(cross(:)));

ynew=y-size(b,1);

xnew=x-size(b,2);

figure;

imshow(a);

for i=1:length(xnew)

imrect(gca,[xnew(i)+1,ynew(i)+1,size(b,2),size(b,1)]);

hold on;

end