program Ex30;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  numar, i: integer;
resourcestring
  Mesaj = ' %d X %d = %d';
begin
  Write('Introduceti numarul: ');
  Readln(numar);
  for i := 1 to 10 do
  begin
    Writeln(Format(Mesaj, [numar, i, numar * i]));
  end;
  Readln;
end.

 