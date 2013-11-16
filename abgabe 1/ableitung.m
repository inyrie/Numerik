%2.a
vectorH = 0;

for i=1:1:10
    vectorH(i) = 10^-i;
end

vectorSolution1 = 0;
vectorSolution2 = 0;
vectorSolution3 = 0;
x = 0;

for i=1:1:10
    vectorSolution1(i) = (exp(0+vectorH(i))-exp(0-vectorH(i)))/(2*vectorH(i));
end

for i=1:1:10
    vectorSolution2(i) = (2*exp(x+vectorH(i))-exp(x)-exp(x-2*vectorH(i)))/(4*vectorH(i));
end

for i=1:1:10
    vectorSolution3(i) = (-exp(x+2*vectorH(i))+8*exp(x+vectorH(i))-8*exp(x-vectorH(i))+exp(x-2*vectorH(i)))/(12*vectorH(i));
end

%2.b
vectorFehler1 = 0;
vectorFehler2 = 0;
vectorFehler3 = 0;

for i=1:1:10
    vectorFehler1(i) = abs(exp(x)-vectorSolution1(i));
end

for i=1:1:10
    vectorFehler2(i) = abs(exp(x)-vectorSolution2(i));
end

for i=1:1:10
    vectorFehler3(i) = abs(exp(x)-vectorSolution3(i));
end

x = [0:0.1:0.9];
loglog(x,vectorFehler1,'b',x,vectorFehler2,'g',x,vectorFehler3,'r')

%2c

