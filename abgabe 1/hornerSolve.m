function [ result ] = hornerSolve( vectorC, x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

n = length(vectorC);
temp = vectorC(1);

for i = 1:1:length(vectorC)-1
    temp = temp * x;
    temp = vectorC(i+1) + temp;
end

result = temp;
    
end
