%%img original
cd C:\Users\Paulo\Documents\MATLAB\D_gen
imo=imread('imT1.jpg');
%save imo
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'imo','B2')


%%img rgb

%%img R
imr=imo(:,:,1);
imwrite(imr, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imr.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'imr','B3')


%%img G
img=imo(:,:,2);
imwrite(img, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\img.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'img','B4')

%%img B
imb=imo(:,:,3);
imwrite(imb, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imb.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'imb','B5')

%%img YCbCr
imycbcr = rgb2ycbcr(imo);

%img Y
imy=imycbcr(:,:,1);
imwrite(imy, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imy.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'imy','B6')

%img Cb
imcb=imycbcr(:,:,2);
imwrite(imy, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imcb.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'imcb','B7')

%img Cr
imcr=imycbcr(:,:,3);
imwrite(imy, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imcr.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'imcr','B8')

%img cinza
imcinza= rgb2gray(imo);
imwrite(imcinza, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imcinza.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'imcinza','B9')

%img bw
level = graythresh(imo);
imbw= im2bw(imo,level);
imwrite(imbw, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imbw.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'imbw','B10')


%img indexada
[X,map] = rgb2ind(imo,256);
imind=[X]
imwrite(imind, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imind.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'imind','B12')

%img intensidade


%convertende de matriz para imagem em cinza
%imtotal = mat2gray(imint);
%imwrite(imtotal, 'imtotal.bmp');

%img HSV
imhsv =rgb2hsv(imo);
imwrite(imhsv, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imhsv.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'imhsv','B13')

%img H
imh =imhsv(:,:,1);
imwrite(imh, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imh.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'immh','B14')

%img S
ims=imhsv(:,:,2);
imwrite(ims, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\ims.bmp');
%xlswrite('C:\Users\Paulo\Documents\MATLAB\contagem\transition\plan.xlsx',1,'imsv','B15')

%img V
imv =imhsv(:,:,3);
imwrite(imv, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imv.bmp');

%img -r
imgb=imb+img-imr;
imwrite(imgb, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imgb.bmp');

%img -g
imrb=imb+imr-img;
imwrite(imrb, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imrb.bmp');

%img -b
imrg=imr+img-imb;
imwrite(imrg, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imrg.bmp');

%img HSV-H
imsv=ims+imv-imh;
imwrite(imsv, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imsv.bmp');

%img HSV-S
imhv=imh+imv-ims;
imwrite(imhv, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imhv.bmp');

%img HSV-V
imhs=imh+ims-imv;
imwrite(imhs, 'C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos\imhs.bmp');




