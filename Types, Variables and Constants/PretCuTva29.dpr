program PretCuTva29;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  TVA = 24;
var
  PretFaraTva, PretCuTva: double;
begin
  Write('Introduceti pretul fara TVA: ');
  readln(PretFaraTVA);
  write('Pretul cu TVA: ' + floattostr(PretFaraTVA * (100 + TVA) / 100));
  readln;
end.
 