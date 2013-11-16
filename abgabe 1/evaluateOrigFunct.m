function [ yVector ] = evaluateOrigFunct( xVector )
%evaluateOrigFunct Evaluates the function f(x) = 1 / (1 + 25x^2) for given
%x values.

yVector = zeros(1,length(xVector))

for i=1:length(xVector)
    yVector(i) = 1/(1 + 25 * xVector(i)^2);
end

end

