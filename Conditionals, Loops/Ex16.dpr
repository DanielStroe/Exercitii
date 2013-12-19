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
begin
  Write('Introduceti varsta persoanei: ');
  Readln(Varsta);
  Write('Cate accidente a avut persoana? ');
  Readln(NrAccidente);
  if Varsta < VarstaTaxare then
    CostFinal := CostInitial + SumaTaxareVarsta
  else
    CostFinal := CostInitial;

  case NrAccidente of
    0: ;
    1: CostFinal := CostFinal + Cost1Accident;
    2: CostFinal := CostFinal + Cost2Accidente;
    3: CostFinal := CostFinal + Cost3Accidente;
    4: CostFinal := CostFinal + Cost4Accidente;
    5: CostFinal := CostFinal + Cost5Accidente;
  else begin Writeln('Nu se poate asigura din cauza ca aveti prea multe accidente!');
      Readln;
      Exit;
    end;
  end;
  Writeln('Cost total = ' + inttostr(CostFinal));
  Readln;
end.

