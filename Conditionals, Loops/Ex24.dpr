program Ex24;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  nr1, nr2, cmmdc, rest: integer;
begin
  Writeln('Introduceti numerele: ');
  Readln(nr1);
  Readln(nr2);
  rest := nr2;
  while nr2 <>0 do
  begin
    rest := nr1 mod nr2;
    nr1 := nr2;
    nr2:= rest;
  end;
  cmmdc := nr1;
  if cmmdc = 1 then
    Writeln('Numerele sunt prime intre ele!')
  else
    Writeln('Cmmdc pt numerele introduse = ' + inttostr(cmmdc));
  Readln;
end.

