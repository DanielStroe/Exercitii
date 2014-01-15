program Ex05;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  cNrDepartamente = 7;
  NumeDepartamente: array[1..cNrDepartamente] of string = ('Personal', 'Marketing', 'Implementare',
    'Service', 'Vanzari', 'Contabilitate', 'Livrari');
var
  PlatiDepartamente: array[1..cNrDepartamente] of Integer;
  NrAngajatiDepartamente: array[1..cNrDepartamente] of integer;
  i, NrAngajati, CodDepartament, SalariuOrar, NrOreLucrate: Integer;
  ToateDepAuAngajati: boolean;
resourcestring
  cIntroducetiNrAngajati = 'Introduceti numarul de angajati(minim 7): ';
  cIntroducetiCodDep = 'Introduceti codul departamentului(1..7): ';
  cIntroducetiSalariuOre = 'Introduceti salariu orar: ';
  cIntroducetiNrOreLucrate = 'Introduceti numar de ore lucrate: ';
  cPlataCatreDepartament = 'Plata catre departamentul %s este: %d';
  cEroare = #13#10 + 'Exista cel putin un departament fara angajati. Va rugam reintroduceti angajatii.';
begin
  repeat
    for i := 1 to cNrDepartamente do
    begin
      NrAngajatiDepartamente[i] := 0;
      PlatiDepartamente[i] := 0;
    end;
    repeat
      Write(cIntroducetiNrAngajati);
      Readln(NrAngajati);
    until NrAngajati >= 7;
    for i := 1 to NrAngajati do
    begin
      repeat
        Write(cIntroducetiCodDep);
        Readln(CodDepartament);
      until CodDepartament in [1..7];
      Inc(NrAngajatiDepartamente[CodDepartament]);
      Write(cIntroducetiSalariuOre); Readln(SalariuOrar);
      Write(cIntroducetiNrOreLucrate); Readln(NrOreLucrate);
      PlatiDepartamente[CodDepartament] := PlatiDepartamente[CodDepartament] + SalariuOrar * NrOreLucrate;
    end;

    ToateDepAuAngajati := true; //pp ca toate dep au angajati
    for i := 1 to cNrDepartamente do
      if NrAngajatiDepartamente[i] = 0 then
        ToateDepAuAngajati := false;
    if not ToateDepAuAngajati then
      Writeln(cEroare);
  until ToateDepAuAngajati;
  for i := 1 to cNrDepartamente do
    Writeln(Format(cPlataCatreDepartament, [NumeDepartamente[i], PlatiDepartamente[i]]));
  Readln;
end.

