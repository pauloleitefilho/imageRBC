cd C:\Users\Paulo\Documents\MATLAB\D_gen\unidades\tipos


%%red
Ic=imread('imr.bmp');
cont2
gt=[qtd_total];
%%green
Ic=imread('img.bmp');
cont2
gt=[gt qtd_total];
%% blue
Ic=imread('imb.bmp');
cont2
gt=[gt qtd_total];

%% yellow
Ic=imread('imy.bmp');
cont2
gt=[gt qtd_total];
%%cb
Ic=imread('imcb.bmp');
cont2
gt=[gt qtd_total];
%%cr
Ic=imread('imcr.bmp');
cont2
gt=[gt qtd_total];

%% red+blue
Ic=imread('imrb.bmp');
cont2
gt=[gt qtd_total];
%% red+green
Ic=imread('imrg.bmp');
cont2
gt=[gt qtd_total];
%% green-blue
Ic=imread('imgb.bmp');
cont2
gt=[gt qtd_total];

%% cor - satura��o - intensidade
Ic=imread('imhsv.bmp');
cont2
gt=[gt qtd_total];
%% hue
Ic=imread('imh.bmp');
cont2
gt=[gt qtd_total];
%% satura��o
Ic=imread('ims.bmp');
cont2
gt=[gt qtd_total];
%%intensidade
Ic=imread('imv.bmp');
cont2
gt=[gt qtd_total];


%%  BW
Ic=imread('imbw.bmp');

cont2
gt=[gt qtd_total];
%%gray
Ic=imread('imcinza.bmp');
cont2
gt=[gt qtd_total];
%% indexada
Ic=imread('imind.bmp');
cont2
gt=[gt qtd_total];


%% hue- intensidade
Ic=imread('imhv.bmp');
cont2
gt=[gt qtd_total];
%%satura��o+intensidade
Ic=imread('imsv.bmp');
cont2
gt=[gt qtd_total];
%% hue+satura��o
Ic=imread('imhs.bmp');
cont2
gt=[gt qtd_total];







dlmwrite('saida2.txt',gt,' ');