% AUFGABE 1f):
% Bestimmen Sie fuer n = 21 das Interpolationspolynom mit polyfit
% fuer f und g.

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
