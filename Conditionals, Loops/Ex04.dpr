program Ex04;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  nr: Integer;
resourcestring
  Mesaj = 'Numarul %d %s este multiplu de 3 sau 5 sau 7';
begin
  Write('Introduceti numarul: ');
  Readln(nr);
  if ((nr mod 3 = 0) or (nr mod 5 = 0) or (nr mod 7 = 0)) then
    Writeln(Format(Mesaj, [nr, '']))
  else Writeln(Format(Mesaj, [nr, 'nu']));
  Readln;
end.

