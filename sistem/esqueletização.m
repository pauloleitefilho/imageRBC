%function impdigital (figura) 
cd C:\Users\Paulo\Desktop\slices\elementos\unidades
img_in=imread('h3.1.bmp');
 %img_in = imread(figura); 
 subplot(3,2,1),imshow(img_in), title('Original'); 
 %Filtros para Eliminaçao de Ruídos 
 img_in = medfilt2(img_in,[3 3]); %Filtro da Mediana 
 mask = [-1 -1 -1 
 -1 9 -1 
 -1 -1 -1]; 
 img_in = imfilter(img_in,mask,'conv'); %Filtro Passa-Altal 
 img_in = medfilt2(img_in,[3 3]); %Filtro da Mediana 
 subplot(3,2,2),imshow(img_in), title('Imagem Filtrada'); 
 img_bw = im2bw(img_in,0.5); %Binarizaçao 
 subplot(3,2,3),imshow(img_bw), title('Imagem Binarizada'); 
 img_bw = not(img_bw); %Negativo 
 img_fil = bwmorph(img_bw, 'spur'); 
 img_skel = bwmorph(img_fil,'skel',Inf); %Esquelitizaçao 
 subplot(3,2,4),imshow(img_skel), title('Esqueletizaçao'); 
 mask_hr = [ 0 0 1 %Elementos Estruturantes para Bifurcações 
 1 1 0 
 0 0 1 ]; 
 mask_hl = [ 1 0 0 
 0 1 1 
 1 0 0 ]; 
 mask_vt = [ 0 1 0 
 0 1 0 
 1 0 1 ]; 
 mask_vb = [ 1 0 1 
 0 1 0 
 0 1 0 ]; 
 %Aplicando Elementos Estruturantes para Bifurcações 
 img_out = imerode(img_skel,mask_hr); 
 img_out = img_out + imerode(img_skel,mask_hl); 
 img_out = img_out + imerode(img_skel,mask_vt); 
 img_out = img_out + imerode(img_skel,mask_vb); 
 
 %Destacando Bifurcações encontradas 
 edilate = strel('disk',7); 
 img_out_ball = imdilate(img_out,edilate); 
 img_out_bif = and (img_skel,img_out_ball); 
 subplot(3,2,5),imshow(img_out_bif), title('Bifurcações'); 
 img_out_fim = or (img_skel,img_out_ball); 
 subplot(3,2,6),imshow(img_out_fim), title('Resultado Final'); 
