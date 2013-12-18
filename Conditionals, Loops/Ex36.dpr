program Ex36;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  nr, i, j: Integer;
resourcestring
  steluta = '*';
begin
  Write('Introduceti numarul: ');
  Readln(nr);
  for i := 1 to nr do
  begin
    for j := 1 to nr do
      if j <= i then
        Write(inttostr(j))
      else Write(steluta);
    Writeln;
  end;
  Readln;
end.

 