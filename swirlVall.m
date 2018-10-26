
function [swirlImg]=swirlVall(img) % function:swirlVall; input:img; output:swirlImg
[m,n,o]=size(img); % holding the size of the original image
swirlImg=img; % creates a copu of the original img to a new swirl image
midValX=floor(m/2);% X Mid point of the image (Round towards minus infinity)
midValY=floor(n/2); % Y Mid point of the image (Round towards minus infinity)
newXarray=zeros([m n]); % creates an array of zeros the size of m by n matrix of the original img
newYarray=zeros([m n]); % creates an array of zeros the size of m by n matrix of the original img
for row=1:m % goes through row-wise
    x=row-midValX-100; % from each row it subtracts the midpoint and then subtracts 100
    for col=1:n % goes through column-wise
        [TH,R]=cart2pol(x,col-midValY+100);% Built in function that transforms cartesian to polar coordinates (x stays the same)              
        TH=TH+(R/100); % creates a new phi to plug into a polar to ccartesian function    
        [X,Y]=pol2cart(TH,R);% Built in function that transforms polar to cartesian coordinates
        newXarray(row,col)=floor(X)+midValX; %creates the new arrays for the x values in cartesian coordinates
        newYarray(row,col)=floor(Y)+midValY; %creates the new arrays for the y values in cartesian coordinates     
    end
end  
% Similar to Problem 2 we need to make sure there are max and min values so
% it doesnt try to create an image too small or too big (as compared to the original size of the image)
newXarray=max(newXarray,1); % max for newX is 1
newXarray=min(newXarray,m); % min for newX is the row size of the image
newYarray=max(newYarray,1); % max of newY is 1
newYarray=min(newYarray,n); % min of newY is the column size of the image        
        for row=1:m % goes through row-wise
            for col=1:n % goes through column-wise
                swirlImg(row,col,:)=img(newXarray(row,col),newYarray(row,col),:); % creates the swirl image from the original image
            end
        end        
end
