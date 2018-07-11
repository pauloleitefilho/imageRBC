I = Iref;
tam=length(I);
sq=tam/5;
ln=0;
nq=0;

%Quadrante 1
%nq=nq;
I2 = imcrop(I,[ln ln sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 2
nq=nq+sq;
I3 = imcrop(I,[nq ln sq sq]);
%imshow(I), figure,imshow(I3)

%Quadrante 3
nq=nq+sq;
I4 = imcrop(I,[nq ln sq sq]);
%imshow(I), figure,imshow(I4)

%Quadrante 4
nq=nq+sq;
I5 =  imcrop(I,[nq ln sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 5
nq=nq+sq;
I6 =  imcrop(I,[nq ln sq sq]);
%imshow(I), figure, imshow(I3)

%%%----------------------------
ln=0;
nq=sq;

%Quadrante 6

I7 = imcrop(I,[ln sq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 7
ln=ln+sq;
I8 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 8
ln=ln+sq;
I9 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 9
ln=ln+sq;
I10 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 10
ln=ln+sq;
I11 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I3)

%%%---------------------------

ln=0;
nq=2*sq;

%Quadrante 11

I12 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 12
ln=ln+sq;
I13 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 13
ln=ln+sq;
I14 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 14
ln=ln+sq;
I15 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 15
ln=ln+sq;
I16 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I3)


%%%---------------------------

ln=0;
nq=3*sq;

%Quadrante 16
I17 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 17
ln=ln+sq;
I18 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 18
ln=ln+sq;
I19 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 19
ln=ln+sq;
I20 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 20
ln=ln+sq;
I21 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I3)


%%%---------------------------

ln=0;
nq=4*sq;

%Quadrante 21
I22 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 2
ln=ln+sq;
I23 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 3
ln=ln+sq;
I24 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 4
ln=ln+sq;
I25 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I2)

%Quadrante 5
ln=ln+sq;
I26 = imcrop(I,[ln nq sq sq]);
%imshow(I), figure, imshow(I3)