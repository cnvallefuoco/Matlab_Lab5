function [waveImg]=waveVall(img,amp,freq) % function:waveVall; inputs:img,amp,freq; output:waveImg
[m,n,o]=size(img); % The size of the image is held by m,n,o
waveImg=img; % creates a copy of the original img to a new wave image
for row = 1:m % goes threw row-wise
  for col = 1:n % goes through column-wise 
      col=col; % the y stays the same 
      newX = row + amp*cos(freq*col); % a funtion that creates the wave
      newX = floor(newX); % Round towards minus infinity
      if newX>m % if the x is greater than the number of rows
          newX=max(m); % bound by the largest value of the rows       
      elseif newX<1 % if the x is less than 1
          newX=min(1); % bound by the smallest value which is 1             
      end
      waveImg(newX,col,:) = img(row,col,:); % creates the new image with the wave function newX on the original image
  end
end
