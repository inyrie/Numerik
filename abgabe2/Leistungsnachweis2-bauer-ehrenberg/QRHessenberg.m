function [ solution ] = QRHessenberg( matrixA, vectorB )

[m,n] = size(matrixA);
keineHessenberg = 'Das ist keine Hessenberg Matrix. Ich will das nicht berechnen';
%Boolean Wert, um zu bestimmten, ob eine Hessenberg Matrix vorliegt. 
isHessenberg = 1;


%Kontrolle, ob Hessenberg Matrix vorliegt.
if m~=n
    solution = keineHessenberg;
    isHessenberg = 0;
else
    for i=3:1:m
        letzteNull = 1;
        
        for j=1:1:letzteNull
            if matrixA(i,j)~=0
                solution = keineHessenberg;
                isHessenberg = 0;
                break
            end
        end
        if isHessenberg == 0
            break
        end
        letzteNull = letzteNull+1;
    end
end

%Berechnung der Hessenberg Matrix.
if isHessenberg == 1
   
   vectorS = 0;
   solutionMatrix = matrixA;
   
   for i=2:1:m
       %Berechnung von c und s
       divisor = sqrt(solutionMatrix(i-1,i-1)^2+solutionMatrix(i,i-1)^2);
       s = solutionMatrix(i,i-1)/divisor;
       c = solutionMatrix(i-1,i-1)/divisor;
       
       %nur die Auschnitte der Matrixen A und Q generieren, die benötigt
       %werden
       Q = [c,s;-s,c];
       matrix(1,:) = solutionMatrix(i-1,:);
       matrix(2,:) = solutionMatrix(i,:);
       
       %Berechnung der Teillösung
       matrix = Q*matrix;
       solutionMatrix(i-1,:) = matrix(1,:);
       solutionMatrix(i,:) = matrix(2,:);
       
       vectorS(i-1) = s;
   end
    
   solution = solutionMatrix\vectorB';
end

end

