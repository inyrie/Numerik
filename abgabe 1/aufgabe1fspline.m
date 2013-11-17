% AUFGABE 1f):
% Bestimmen Sie fuer n = 21 die Spline-Funktion (mit spline) fuer f und g. 

n=21;
% Ermitteln der Datenpunkte
vectorX = mycheby(n);
vectorY = evaluateOrigFunct(vectorX);
vectorYAbs = evaluateAbsolute(vectorX);

% Auswerten der Splines an Chebyshev-Stuetzstellen:
evaluatedYs = spline(vectorX, vectorY, -1:0.001:1);
evaluatedYsAbs = spline(vectorX, vectorYAbs, -1:0.001:1);

% Plot der Funktionen:
figure;plot(-1:0.001:1,evaluatedYs,-1:0.001:1,evaluatedYsAbs);