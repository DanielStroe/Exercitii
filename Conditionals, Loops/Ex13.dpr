program Ex13;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  caracter: char;
begin
  Write('Introduceti un caracter: ');
  Readln(caracter);
  case caracter of
    '1'..'3': Writeln(string(caracter) + '0');
    '4'..'6': Writeln(string(caracter) + '00');
    '7'..'9': Writeln(string(caracter) + '000');
  else Writeln('Caracterul introdus este 0 sau orice altceva decat un numar intre 1 si 9');
  end;
  Readln;
end.

