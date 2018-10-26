function [lefImg,rigImg,avgImg]=symmetryVall(img) %function:symmetryVall;outputs:lefImg,rigImg,avgImg;input:img
lefImg=img; %creates a copy of img for a left fliped image
rigImg=img; %creates a copy of img for a right fliped image
avgImg=img; %creates a copy of img for an average left/right flipped image
[m,n,o]=size(img); %holds the size of the original image with m,n,o 
for row = 1:m %Goes through row-wise
  for col = n/2:n-1 %Goes through column-wise half way through the image to the end
   lefImg(row,col+1,:) = img(row,n-col,:); %keeps the left side of the image and flips it to the right
  end
end  
for row = 1:m %Goes through row-wise
  for col = 0:(n-1)/2 %Goes through column-wise from the start to the middle of the image
   rigImg(row,col+1,:) = img(row,n-col,:); %keeps the right side of the image and flips it to the left
  end 
end   
avgImg=(rigImg+lefImg)/2; %average of right and left flip
end
