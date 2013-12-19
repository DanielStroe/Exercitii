program Ex16;

{$APPTYPE CONSOLE}

uses
  SysUtils;
const
  Cost1Accident = 50;
  Cost2Accidente = 125;
  Cost3Accidente = 225;
  Cost4Accidente = 375;
  Cost5Accidente = 575;
  CostInitial = 500;
  VarstaTaxare = 25;
  SumaTaxareVarsta = 100;
var
  Varsta, NrAccidente, CostFinal: Integer;
  SePoateAsigura: Boolean;
begin
  Write('Introduceti varsta persoanei: ');
  Readln(Varsta);
  Write('Cate accidente a avut persoana? ');
  Readln(NrAccidente);
  if Varsta < VarstaTaxare then
    CostFinal := CostInitial + SumaTaxareVarsta
  else
    CostFinal := CostInitial;
  SePoateAsigura := True;
  case NrAccidente of
    0: ;
    1: CostFinal := CostFinal + Cost1Accident;
    2: CostFinal := CostFinal + Cost2Accidente;
    3: CostFinal := CostFinal + Cost3Accidente;
    4: CostFinal := CostFinal + Cost4Accidente;
    5: CostFinal := CostFinal + Cost5Accidente;
  else SePoateAsigura := False;
  end;
  if SePoateAsigura then
    Writeln('Cost total = ' + inttostr(CostFinal))
  else
    Writeln('Nu puteti asigura masina din cauza numarului prea mare de accidente!');
  Readln;
end.

