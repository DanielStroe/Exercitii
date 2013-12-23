program Ex25;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i: integer;
resourcestring
  mesaj = '%s neagra %0:s rosu %0:s caro %0:s trefla';
begin
  for i := 2 to 15 do
  begin
    if ((i > 1) and (i <= 10)) then
      Writeln(Format(mesaj, [inttostr(i)]));
    if i = 12 then
      Writeln(Format(mesaj, ['J']));
    if i = 13 then
      Writeln(Format(mesaj, ['Q']));
    if i = 14 then
      Writeln(Format(mesaj, ['K']));
    if i = 15 then
      Writeln(Format(mesaj, ['A']));
  end;
  Readln;
end.

 