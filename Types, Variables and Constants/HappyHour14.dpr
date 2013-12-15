program HappyHour14;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  ProcentHappyHour = 20;
var
  Pret: Double;
begin
  write('Dati pretul: ');
  readln(Pret);
  write('Pretul cu discount 20% aplicat: ' + floattostr(Pret * (100 - ProcentHappyHour) / 100));
  readln;
end.
 