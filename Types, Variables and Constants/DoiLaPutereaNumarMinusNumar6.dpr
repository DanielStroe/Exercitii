program DoiLaPutereaNumarMinusNumar6;

{$APPTYPE CONSOLE}

uses
  SysUtils, Math;

var
  numar: integer;
  rezultat: extended;
begin
  Write('Dati numarul: ');
  Readln(numar);
  rezultat := power(2,numar) - numar;
  Write(floattostr(rezultat));
  Readln;
end.
 