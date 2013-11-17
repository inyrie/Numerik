function [ listChebys ] = mycheby( n )

for i=1:1:n
   listChebys(i)= cos((2*i+1)/(2*n+2)*pi);
end


end

