program KWh16;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  CostKWh, CostTotal: double;
  NrKWh: integer;
begin
  write('Costul unui KWh: ');
  readln(CostKWh);
  write('Numarul de kilowati-ora: ');
  readln(NrKWh);
  CostTotal := CostKWh * NrKWh;
  write('cost total: ' + floattostr(CostTotal));
  readln;
end.
 