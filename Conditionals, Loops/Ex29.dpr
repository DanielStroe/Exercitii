program Ex29;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  ProcTvaSub10000 = 5;
  ProcTva10000to100000 = 8;
  ProcTvaPeste100000 = 8.5;
var
  PretFaraTva, Tva: double;
begin
  Write('Pretul fara TVA: ');
  Readln(PretFaraTva);
  if PretFaraTva <= 10000 then
    Tva := (ProcTvaSub10000 * PretFaraTva) / 100;
  if ((PretFaraTva > 10000) and (PretFaraTva < 100000)) then
    Tva := (ProcTva10000to100000 * PretFaraTva) / 100;
  if PretFaraTva >= 100000 then
    Tva := (ProcTvaPeste100000 * PretFaraTva) / 100;
  Writeln('TVA = ' + floattostr(Tva));
  Readln;
end.

 