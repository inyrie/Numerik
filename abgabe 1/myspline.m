function [ coeffList ] = myspline( vectorX, vectorY )
%UNTITLED Summary of this function goes here
%   Aufgabe 1a

listH = 0;

for i=1:1:length(vectorX)-1
        listH(i) = vectorX(i+1)-vectorX(i);
end

matrixA = zeros(length(vectorX)-2,length(vectorX));
listR = 0;

for i=1:1:length(vectorX)-2
    matrixA(i,i) = listH(1);
    matrixA(i,i+1) = 2*(listH(i)+listH(i+1));
    matrixA(i,i+2) = listH(i+1);
    listR(i) = (3*((vectorY(i+2)-vectorY(i+1))/listH(i+1)))-(3*((vectorY(i+1)-vectorY(i))/listH(i)));
end


listC = [matrixA\listR']';


listD = 0;
listB = 0;

for i=1:1:length(vectorX)-1
   listD(i) = (listC(i+1)-listC(i))/(3*listH(i));
   listB(i) = ((vectorY(i+1)-vectorY(i))/listH(i)) - (listH(i)/3)*(listC(i+1)+2*listC(i));
end

coeffList = [vectorY(1:length(vectorY)-1); listB; listC(1:length(listC)-1); listD]';

end

