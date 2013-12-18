program Ex17;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  nr, i: Integer;
begin
  Write('Introduceti numarul: ');
  Readln(nr);
  for i := 1 to nr do
  begin
    if (i = nr) then
      Write(inttostr(i))
    else
      Write(inttostr(i) + ', ');
  end;
  Readln;
end.

 