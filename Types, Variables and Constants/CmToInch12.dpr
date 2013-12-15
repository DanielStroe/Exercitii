program CmToInch12;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  CmToInch = 0.39;
var
  cm,inch:double;
begin
  write('Dati centimetrii: ');
  readln(cm);
  inch := cm * CmToInch;
  Write(floattostr(inch));
  readln;
end.
 