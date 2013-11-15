function [ evaluatedY ] = evaluateSpline( coeffMatrix, vectorX, xCoord )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

startIndex = 0;

for i=1:length(vectorX)
    
    if xCoord <= vectorX(i)
        startIndex = i-1;
    end
end

end