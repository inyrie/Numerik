function [ vectorH ] = listeH( vectorX )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

for i=1:1:length(vectorX)-1
        vectorH(i) = vectorX(i+1)-vectorX(i);
end


end

