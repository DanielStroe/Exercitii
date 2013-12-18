program Ex37;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  numar: integer;
begin
  Write('Introduceti un numar intre 100 si 300: ');
  Readln(numar);
  if ((numar < 100) or (numar > 300)) then
  begin
    repeat
      Write('Numarul nu este bun, mai incercati: ');
      Readln(numar);
    until ((numar > 100) and (numar < 300));
  end;
  Writeln('Numarul introdus este bun');
  Readln;
end.

 