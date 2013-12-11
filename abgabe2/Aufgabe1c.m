untereGrenze = -1;
obereGrenze = 1;
tol = 0.5;
opCount = 0;

[ergebnisAdaptQuad, countAdaptQuad] = AdaptQuad( tol, untereGrenze, obereGrenze, opCount );
[ergebnisQuad, countQuad] = quad(@f,untereGrenze,obereGrenze,tol,opCount);
[ergebnisQuadgk, countQuadgk] = quadgk(@f,untereGrenze,obereGrenze,'RelTol',tol);
ergebnisQuadl = quadl(@f,untereGrenze,obereGrenze,tol);

anzeigeAdaptQuad=['Ergebnis mit AdaptQuad: ',num2str(ergebnisAdaptQuad),' mit ', num2str(countAdaptQuad),' Funktionsaurufe'];
anzeigeQuad=['Ergebnis mit Quad: ',num2str(ergebnisQuad),' mit ', num2str(countQuad),' Funktionsaurufe'];
anzeigeQuadgk=['Ergebnis mit Quadgk: ',num2str(ergebnisQuadgk),' mit ', num2str(countQuadgk),' Funktionsaurufe'];
anzeigeQuadl=['Ergebnis mit Quadl: ',num2str(ergebnisQuadl)];
disp(anzeigeAdaptQuad)
disp(anzeigeQuad)
disp(anzeigeQuadgk)
disp(anzeigeQuadl)


