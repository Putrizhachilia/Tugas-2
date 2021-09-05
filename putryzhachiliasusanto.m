image=imread('e:\putri.PNG');
imshow(image);
title('Citra Berwarna');
graycale=rgb2gray(image)
imshow(graycale)
title('Citra Keabuan');
I_gey = (a(:,:,1)+a(:,:,2)+a(:,:,3)/3);
imshow(I_gey)
title('Citra Biner');
kontras = image+100;
imshow(kontras);
title('Citra Kontras');
brightness = image/8;
imshow(brightness);
title('Citra brightness')

