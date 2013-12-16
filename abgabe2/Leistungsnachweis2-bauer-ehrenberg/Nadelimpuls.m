leftIntervall = -1;
rightIntervall = 1;
exact = 3139.59265425646;


for i=0:1:15
    h = 2*(1/2)^i;
    startIntervall = leftIntervall;
    sum = 0;
    while startIntervall < rightIntervall
        endIntervall = startIntervall + h;
        teilIntervall= h/3;
        
        sum = sum + (h/8)*(f(startIntervall)+3*f(startIntervall+teilIntervall) + 3*f(startIntervall+(teilIntervall*2)) + f(endIntervall));
        
        startIntervall = endIntervall;
    end
    
    error = abs(exact-sum)/exact;
    anzeige = ['Fuer h = ', num2str(h) ,' ist die Summe: ' , num2str(sum), ' mit einem relativen Fehler von ', num2str(error)];
    disp(anzeige)
end