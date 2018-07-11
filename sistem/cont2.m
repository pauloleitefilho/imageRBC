
original = Ic;
imC = original(:,:,1)<170;
%imC= im2bw(original, graythresh(original));
[B,L] = bwboundaries(imC, 'noholes');
%[B,L] = bwboundaries(original, 'noholes');
stats = regionprops(L, 'Area');
qtd_total = sum([stats.Area] > 1);
%qtd_total




for k = 1:length(B)
    area = stats(k).Area;
end

