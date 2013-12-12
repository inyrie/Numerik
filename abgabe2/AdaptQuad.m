function [ intervallSum, opCount ] = AdaptQuad( tolerance, leftIntBorder, rightIntBorder, opCount )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% Bestimmen der Intervallbreite
h = rightIntBorder - leftIntBorder;

sumPartInt1 = dreiAchtel(@f, leftIntBorder, rightIntBorder);
sumPartInt2 = dreiAchtel(@f, leftIntBorder, (leftIntBorder+ h/2)) + dreiAchtel(@f, (leftIntBorder + h/2), rightIntBorder);

diff = abs(sumPartInt1 - sumPartInt2);

if diff > tolerance
    
    opCount = opCount+1;
    % rekursiver Aufruf Formel:
    % Halbieren von h
    % Verschieben Intervallgrenzen
    
    [sumPart1,count1] = AdaptQuad(tolerance, leftIntBorder, leftIntBorder+ h/2, opCount);
    [sumPart2,count2] = AdaptQuad(tolerance, leftIntBorder + h/2, rightIntBorder, opCount);


    sumPartInt2 = sumPart1 + sumPart2;
    opCount = count1 + count2;
end

intervallSum = sumPartInt2;

end

