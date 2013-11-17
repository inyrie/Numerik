%Bauer Michael und Ehrenberg Stephanie

function [ result ] = hornerSolve( vectorC, x )
n = length(vectorC);
temp = vectorC(1);

for i = 1:1:length(vectorC)-1
    temp = temp * x;
    temp = vectorC(i+1) + temp;
end

result = temp;
    
end
