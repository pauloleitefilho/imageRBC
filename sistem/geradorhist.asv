rgb_img=

%RGB
R=rgb_img(:,:,1); 
G=rgb_img(:,:,2); 
B=rgb_img(:,:,3); 
hR=imhist(R);
hg=imhist(G);
hB=imhist(B);
 
%YCbCr
ycbcr_img = rgb2ycbcr(rgb_img);
Y=ycbcr_img(:,:,1); 
cb=ycbcr_img(:,:,2); 
cr=ycbcr_img(:,:,3); 
hy=imhist(Y);
hcb=imhist(cb);
hcr=imhist(cr);

%gray
imcinza= rgb2gray(rgb_img);
%BW
level = graythresh(rgb_img);
imbw= im2bw(rgb_img,level);

Ri=imhist(rgb_img(:,:,1));
imwrite(Ri, 'C:\Users\Paulo\Documents\MATLAB\n_img\histogramas\1\Ri.jpg');

Gi=imhist(rgb_img(:,:,2));
imwrite(Gi, 'C:\Users\Paulo\Documents\MATLAB\n_img\histogramas\1\Gi.jpg');

Bi=imhist(rgb_img(:,:,3));
imwrite(Bi, 'C:\Users\Paulo\Documents\MATLAB\n_img\histogramas\1\Bi.jpg');


cinzai=imhist(imcinza);
imwrite(cinzai, 'C:\Users\Paulo\Documents\MATLAB\n_img\histogramas\1\cinzai.jpg');

yi=imhist(ycbcr_img(:,:,1)); 
imwrite(yi, 'C:\Users\Paulo\Documents\MATLAB\n_img\histogramas\1\yi.jpg');

cbi=imhist(ycbcr_img(:,:,2)); 
imwrite(cbi, 'C:\Users\Paulo\Documents\MATLAB\n_img\histogramas\1\cbi.jpg');

cri=imhist(ycbcr_img(:,:,3)); 
imwrite(cri, 'C:\Users\Paulo\Documents\MATLAB\n_img\histogramas\1\cri.jpg');

pbi=imhist(imbw);
imwrite(pbi, 'C:\Users\Paulo\Documents\MATLAB\n_img\histogramas\1\pbi.jpg');

