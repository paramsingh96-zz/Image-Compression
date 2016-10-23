clc;clear all;close all;
A=imread('cameraman_md.png');
figure;
imshow(A);
N=8;
Z=256;
B=zeros(256,256);
for r=1:N:256
    for c=1:N:256
        B(r:r+N-1,c:c+N-1)=A(r:r+N-1,c:c+N-1);
        C=dct2(B);
        D=1/Z*idct2(C);
    end;
end;
figure;
imshow(C);
imwrite(C,'dct_matrix.png');
figure;
imshow(D);
imwrite(D,'compressed_image.png');
