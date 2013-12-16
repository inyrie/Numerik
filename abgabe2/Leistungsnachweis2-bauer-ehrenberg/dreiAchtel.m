function [ sum ] = dreiAchtel( funct, leftIntBorder, rightIntBorder )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

h = rightIntBorder - leftIntBorder;
sum = h/8 * (funct(leftIntBorder) + 3*funct(leftIntBorder + h/3) + 3*funct(leftIntBorder + 2*h/3) + funct(rightIntBorder));

end

