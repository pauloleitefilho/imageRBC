%rgb_img2 = imread('C:\Users\Paulo\Documents\MATLAB\D_gen\h1.1.bmp'); 
rgb_img = imread('C:\Users\Paulo\Documents\MATLAB\D_gen\h1.1.bmp'); 
('C:\Users\Paulo\Documents\MATLAB\n_img\imgsslices\h1.1.jpg');
%hR2=imhist(rgb_img);
%rgb_img=histeq(rgb_img2);

%rgb_img = imread('C:\Users\Paulo\Documents\MATLAB\D_gen\h1.1.bmp'); 
%I=rgb_img(:,:,1); 
%J = histeq(I);
%hR=imhist(J);
%imshow(hR)


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
%equalizada
%histeq(rgb_img);

subplot(4,4,1) 
imshow(rgb_img);
title('RGB Original') 
subplot(4,4,2) 
imshow(ycbcr_img);
title('YCbCr Original')
subplot(4,4,3) 
imshow(imcinza);
title('cinza Original') 
subplot(4,4,4) 
imshow(imbw);
title('preto-branco Original')
subplot(4,4,5) 
imhist(rgb_img(:,:,1));
title('Histograma R Original') 
subplot(4,4,6) 
imhist(rgb_img(:,:,2));
title('Histograma G Original') 
subplot(4,4,7) 
imhist(rgb_img(:,:,3));
title('Histograma B Original')
subplot(4,4,8) 
imhist(imcinza);
title('Histograma cinza')
subplot(4,4,9) 
imhist(ycbcr_img(:,:,1)); 
title('Histograma componente Y') 
subplot(4,4,10) 
imhist(ycbcr_img(:,:,2)); 
title('Histograma componente Cb')
subplot(4,4,11) 
imhist(ycbcr_img(:,:,3)); 
title('Histograma componente Cr')
subplot(4,4,12) 
imhist(imbw);
title('Histograma BW')

%subplot(4,4,13) 
%histeq(rgb_img)
%title('Histograma equqlizado RGB')

%subplot(4,4,14) 
%figure; imhist(rgb_img,128) 
%title('Histograma equqlizado RGB')




