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
  i, NrAngajati, CodDepartament, SalariuOrar, NrOreLucrate: Integer;

resourcestring
  cIntroducetiNrAngajati = 'Introduceti numarul de angajati: ';
  cIntroducetiCodDep = 'Introduceti codul departamentului(1..7): ';
  cIntroducetiSalariuOre = 'Introduceti salariu orar: ';
  cIntroducetiNrOreLucrate = 'Introduceti numar de ore lucrate: ';
  cPlataCatreDepartament = 'Plata catre departamentul %s este: %d';
begin
  Write(cIntroducetiNrAngajati);
  Readln(NrAngajati);

  for i := 1 to NrAngajati do
  begin
    repeat
      Write(cIntroducetiCodDep);
      Readln(CodDepartament);
    until CodDepartament in [1..7];
    Write(cIntroducetiSalariuOre); Readln(SalariuOrar);
    Write(cIntroducetiNrOreLucrate); Readln(NrOreLucrate);
    PlatiDepartamente[CodDepartament] := PlatiDepartamente[CodDepartament] + SalariuOrar * NrOreLucrate;
  end;

  for i := 1 to cNrDepartamente do
    Writeln(Format(cPlataCatreDepartament,[NumeDepartamente[i], PlatiDepartamente[i]]));
  Readln;
end.

