program Ex41;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  numar: Integer;
const
  mesaj = 'Numarul %d %s cuprins in intervalul [33,55].';
begin
  Write('Introduceti numarul: ');
  Readln(numar);
  if (numar >= 33) then
    if (numar <= 55) then
      Writeln(Format(mesaj, [numar, 'este']))
    else Writeln(Format(mesaj, [numar, 'nu este']))
  else Writeln(Format(mesaj, [numar, 'nu este']));
  Readln;
end.

