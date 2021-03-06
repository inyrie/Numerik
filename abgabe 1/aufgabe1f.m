% AUFGABE 1f):
% Bestimmen Sie fuer n = 21 das Interpolationspolynom mit polyfit
% und Spline-Funktion (mit spline) fuer f und g. Was sagt die 
% Abschaetzungsformel ueber den Fehler der Polynominterpolation bei g(x)
% aus?

n=21;
% Ermitteln der Datenpunkte
vectorX = mycheby(n);
vectorY = evaluateOrigFunct(vectorX);
vectorYAbs = evaluateAbsolute(vectorX);

% MATLAB warnt - Polynomial is badly conditioned!
interpolPolyCoeffs = polyfit(vectorX, vectorY, n-1);
interpolPolyAbsCoeffs = polyfit(vectorX, vectorYAbs, n-1);

evaluatedYs = zeros(1,length(vectorX));

for i=1:length(vectorX)
    evaluatedYs(i) = hornerSolve(interpolPolyCoeffs,vectorX(i));
end

figure;plot(vectorX,evaluatedYs)

%spline(vectorX, vectorY, n)

