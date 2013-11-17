% AUFGABE 1e):
% Schreiben Sie eine Funktion mycheby, die fur eine gegebene Zahl n 
% die n Chebyshev-Stützstellen im Intervall [?1; 1] sowie die 
% Funktionswerte von f(x) und g(x) = |x| an diesen Stellen bestimmt.

% Bestimmen von 1000 Chebycheff-Stuetzstellen:
listCheby = mycheby(1000)
% Auswerten der urspruenglichen Funktion an den Cheby.-Stuetzstellen:
listChebyY = evaluateOrigFunct(listCheby)

% Bestimmen von g(x) = |x|:
listChebyAbs = evaluateAbsolute(listCheby);

% Plot der Funktionen fuer f(x) und g(x):
figure;plot(listCheby,listChebyY)
figure;plot(listCheby,listChebyAbs)