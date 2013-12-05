function [ intervallSum ] = AdaptQuad( f, tolerance, leftIntBorder, rightIntBorder )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% Bestimmen der Intervallbreite
h = rightIntBorder - leftIntBorder;

sumPartInt1 = dreiAchtel(f, leftIntBorder, rightIntBorder);
sumPartInt2 = dreiAchtel(f, leftIntBorder, leftIntBorder+ h/2) + dreiAchtel(f, leftIntBorder + h/2, rightIntBorder);

if abs(sumPartInt1 - sumPartInt2) > tolerance
    
    % rekursiver Aufruf Formel:
    % Halbieren von h
    % Verschieben Intervallgrenzen
    
    sumPart1 = AdaptQuad(f, tolerance/2, leftIntBorder, leftIntBorder+ h/2) + AdaptQuad(f, tolerance/2, leftIntBorder + h/2, rightIntBorder);
    
end

intervallSum = sumPart1;

end

