%% HW5
% This is Carina Vallefuoco's Homework 5.
%% Problem 1
% In this problem I am using an image of myself and adapting it so that
% there is a left flip, right flip, and an average of the left and right
% flip.
img=imread('Symmetry Photo.jpg'); % read in the image
img=im2double(img); % converts image to double percision
[lefImg,rigImg,avgImg]=symmetryVall(img); % defining the variables in an array for the function being called
subplot(1,4,1),imshow(img),title('Original') % displays original
subplot(1,4,2),imshow(lefImg),title('Left Flip') % displays left flip
subplot(1,4,3),imshow(rigImg),title('Right Flip') % displays right flip
subplot(1,4,4),imshow(avgImg),title('Average') % displays average of right and left flip

%% Problem 2
% In this problem I am using a landscape image and adapting it to look like a wave.
clear % clears all previous variables
close all % closes out of all figures
img=imread('wave photo.jpg'); % read in the image
img=im2double(img); % converts image to double percision
amp = 50; % amplitude
freq = 1/30; % frequency
waveImg=waveVall(img,amp,freq); % defining the variables in an array for the function being called
subplot(1,2,1),imshow(img),title('Original') % displays original
subplot(1,2,2),imshow(waveImg),title('Wave Image') % displays the wave image

%% Problem 3
% In this problem I am using a flower image and adapting it so that it swirls.
clear % clears all previous variables
close all % closes out of all figures
img=imread('swirl photo.jpg'); % read in the image
swirlImg=swirlVall(img); % defining the swirl image using the swirlVall function
subplot(1,2,1),imshow(img),title('Original') % displays original
subplot(1,2,2),imshow(swirlImg),title('Swirl Image') % displays the swirl image

%% Link to this website and m-file
%
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/hw5Vall.html hw5Vall.html>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/hw5Vall.m hw5Vall.m>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/symmetryVall.m symmetryVall.m>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/waveVall.m waveVall.m>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/swirlVall.m swirlVall.m>
