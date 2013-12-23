program Ex01;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  nr: Integer;
begin
  Write('Introduceti numarul: ');
  Readln(nr);
  if nr = 0 then
    Write('Numarul este 0')
  else if ((nr > 0) and (nr <= 10)) then
    Write('Numarul este intre 1 si 10')
  else if ((nr > 10) and (nr <= 20)) then
    Write('Numarul este intre 11 si 20')
  else if nr > 20 then
    Write('Numarul este mai mare de 20');
  Readln;
end.

