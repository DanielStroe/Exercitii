program Ex26;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  nr, i, j: Integer;
begin
  Write('Introduceti numarul: ');
  Readln(nr);
  for i := 1 to nr do
  begin
    for j := 1 to i do
      Write(inttostr(j));
    Writeln;
  end;
  for i := nr - 1 downto 1 do
  begin
    for j := 1 to i do
      Write(inttostr(j));
    Writeln;
  end;
  Readln;
end.

 