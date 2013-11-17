%1b
vectorX = [-1:0.25:1];
vectorY = [0.0385, 0.0664, 0.1379, 0.3902, 1, 0.3902, 0.1379, 0.0664, 0.0385];

coeffMatrix = myspline(vectorX, vectorY);


listX1 = 0;
listY1 = 0;
j = 1;

for i=-1:0.001:1
    listX1(j) = i;
    listY1(j) = evaluateSpline(coeffMatrix, vectorX, listX1(j));
    j = j +1;
end


figure;plot(listX1,listY1,vectorX,vectorY);

%1c
xx = -1:0.001:1;
cs = spline(vectorX,vectorY,xx);
figure;plot(vectorX,vectorY,xx,cs);

%1d
vanderMatrix = vander(-1:0.25:1);
vectorC = vanderMatrix\vectorY';
vectorVander = 0;

for i=1:1:length(xx)
    vectorVander(i) = hornerSolve(vectorC,xx(i));
end

figure;plot(xx,vectorVander);

