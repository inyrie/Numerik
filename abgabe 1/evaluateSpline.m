function [ evaluatedY ] = evaluateSpline( coeffMatrix, vectorX, xCoord )
% evaluateSpline: Evaluates a spline function at value xCoord, using
% a given matrix for the coefficients of every single polynom for given 
% intervalls defined by vectorX.

startIndex = 0;

for i=1:1:length(vectorX)-1
    
    if xCoord >= vectorX(i)
        startIndex = i;
    end
end
evaluatedY = coeffMatrix(startIndex,1) + coeffMatrix(startIndex,2)*(xCoord-vectorX(startIndex))+ coeffMatrix(startIndex,3)*((xCoord-vectorX(startIndex))^2)+ coeffMatrix(startIndex,4)*((xCoord-vectorX(startIndex))^3);

end