program Ex27;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  n, i, j: Integer;
resourcestring
  Steluta = '*';
begin
  Write('Introduceti n: ');
  Readln(n);
  for i := 1 to n do
  begin
    for j := 1 to 2 * n - 1 do
      if ((j >= n - i + 1) and (j <= n + i - 1)) then
        Write(Steluta)
      else Write(' ');
    Writeln;
  end;
  Readln;
end.

