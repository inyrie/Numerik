function [ evaluatedY ] = evaluateSpline( coeffMatrix, vectorX, xCoord )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

startIndex = 0;

for i=1:1:length(vectorX)-1
    
    if xCoord >= vectorX(i)
        startIndex = i;
    end
end
evaluatedY = coeffMatrix(startIndex,1) + coeffMatrix(startIndex,2)*(xCoord-vectorX(startIndex))+ coeffMatrix(startIndex,3)*((xCoord-vectorX(startIndex))^2)+ coeffMatrix(startIndex,4)*((xCoord-vectorX(startIndex))^3);

end