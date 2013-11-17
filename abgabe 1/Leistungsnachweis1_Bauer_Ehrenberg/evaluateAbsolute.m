%Bauer Michael und Ehrenberg Stephanie

function [ absValues ] = evaluateAbsolute( vectorX )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

absValues = zeros(1,length(vectorX));

for i=1:length(vectorX)
    absValues(i) = abs(vectorX(i));
end

end

