% AUFGABE 1f):
% Bestimmen Sie fuer n = 21 die Spline-Funktion (mit spline) fuer f und g. 

n=21;
% Ermitteln der Datenpunkte
vectorX = -1:0.25:1;
vectorY = evaluateOrigFunct(vectorX);
vectorYAbs = evaluateAbsolute(vectorX);

% MATLAB warnt - Polynomial is badly conditioned!
splineCoeffs = spline(vectorX, vectorY, mycheby(n));
splineAbsCoeffs = spline(vectorX, vectorYAbs, mycheby(n));

evaluatedYs = zeros(1,length(vectorX));

for i=1:length(vectorX)
    evaluatedYs(i) = hornerSolve(interpolPolyCoeffs,vectorX(i));
end

figure;plot(vectorX,evaluatedYs)

