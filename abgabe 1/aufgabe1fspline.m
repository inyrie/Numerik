% AUFGABE 1f):
% Bestimmen Sie fuer n = 21 die Spline-Funktion (mit spline) fuer f und g. 

n=21;
% Ermitteln der Datenpunkte
vectorX = -1:0.001:1;
vectorY = evaluateOrigFunct(vectorX);
vectorYAbs = evaluateAbsolute(vectorX);

% Aufstellen der Splines:
splineCoeffs = spline(vectorX, vectorY, mycheby(n));
splineAbsCoeffs = spline(vectorX, vectorYAbs, mycheby(n));

% Auswerten des genaeherten Polynoms an den Chebyshev-Stuetzstellen:
evaluatedYs = zeros(1,length(vectorX));
for i=1:length(vectorX)
    evaluatedYs(i) = hornerSolve(splineCoeffs,vectorX(i));
end

% Plot der Funktionen:
figure;plot(vectorX,evaluatedYs)
%figure;plot(vectorX,evaluate)

