program Ex24;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  nr1, nr2: integer;
begin
  Writeln('Introduceti numerele: ');
  Readln(nr1);
  Readln(nr2);
  while (nr1 <> nr2) do
  begin
    if nr1 > nr2 then
      nr1 := nr1 - nr2
    else
      nr2 := nr2 - nr1;
  end;
  if nr1 = 1 then
    Writeln('Numerele sunt prime intre ele!')
  else
    Writeln('Cmmdc pt numerele introduse = ' + inttostr(nr1));
  Readln;
end.

