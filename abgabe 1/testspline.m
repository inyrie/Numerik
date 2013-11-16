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


%figure;plot(listX1,listY1,vectorX,vectorY);

xx = -1:0.001:1;
cs = spline(vectorX,vectorY,xx);
%figure;plot(vectorX,vectorY,xx,cs);

vanderMatrix = vander(-1:0.25:1);
vectorC = vanderMatrix\vectorY';
vectorVander = 0;

for i=1:1:length(xx)
    vectorVander(i) = hornerSolve(vectorC,xx(i));
end


%figure;plot(xx,vectorVander);
% Begründung für Unterschied zwischen Interpolation und Splines:
% Bei Verwendung der Vandermonde-Matrix wird nur die einfache
% Polynominterpolation mit einem Polynom gemacht. Die ist für die Stelle x, an der das
% Polynom ausgewertet wird, sehr exaxt, aber mit zunehmender Entfernung von
% der Auswertestelle nimmt die Abweichung (also der Fehler) zu.

listCheby = mycheby(1000)
listChebyY = evaluateOrigFunct(listCheby)

figure;plot(listCheby,listChebyY)