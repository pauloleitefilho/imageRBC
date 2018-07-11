mat1=[];
mattemp=[];

for i=1:10;
    i2=int2str(i);
    nome2=i2;
    ext='jpg';
    nome = [nome2 '.' ext];
    mattemp=[nome];
    mat1=[mat1 mattemp];
end;

[lin col]=size(mat1);
lin
col



