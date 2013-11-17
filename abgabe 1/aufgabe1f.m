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
interpolPolyCoeffs = polyfit(vectorX, vectorY, n);
interpolPolyAbsCoeffs = polyfit(vectorX, vectorYAbs, n);

%Plot der beiden Funktionen
figure;plot(vectorX, vectorY)
figure;plot(vectorX,vectorYAbs)

%spline(vectorX, vectorY, n)

