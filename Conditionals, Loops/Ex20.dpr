program Ex20;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  n, k, i, NFactorial, KFactorial: integer;
begin
  Write('Introduceti k: ');
  Readln(k);
  Write('Introduceti n: ');
  Readln(n);
  while ((k > n) or (k<1)) do
  begin
  Writeln('1<k<n !!!!');
  Write('Introduceti k: ');
  Readln(k);
  Write('Introduceti n: ');
  Readln(n);
  end;
  NFactorial := 1;
  KFactorial := 1;
  for i := 1 to n do
    NFactorial := NFactorial * i;
  for i := 1 to k do
    KFactorial := KFactorial * i;
  Writeln(' N!/K! = ' + floattostr(NFactorial / KFactorial));
  Readln;
end.

 