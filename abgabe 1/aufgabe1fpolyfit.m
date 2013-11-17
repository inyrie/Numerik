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

% Auswerten des Polynoms an ausreichend vielen Stellen fuer schoeneren
% Graphen:
xToEvaluate=-1:0.001:1;
for i=1:length(xToEvaluate)
    evaluatedYs(i) = hornerSolve(interpolPolyCoeffs,xToEvaluate(i));
end

figure;plot(xToEvaluate,evaluatedYs)
