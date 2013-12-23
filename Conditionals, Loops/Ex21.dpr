program Ex21;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  n, k, i, NFactorial, KFactorial, NminusKFactorial: integer;
begin
  Write('Introduceti k: ');
  Readln(k);
  Write('Introduceti n: ');
  Readln(n);
  while ((k < n) or (n < 1)) do
  begin
    Writeln('1<n<k !!!!');
    Write('Introduceti k: ');
    Readln(k);
    Write('Introduceti n: ');
    Readln(n);
  end;
  NFactorial := 1;
  KFactorial := 1;
  NminusKFactorial := 1;
  for i := 1 to n do
    NFactorial := NFactorial * i;
  for i := 1 to k do
    KFactorial := KFactorial * i;
  for i := 1 to n - k do
    NminusKFactorial := NminusKFactorial * i;
  Writeln(' N!*K!/(N-K)! = ' + floattostr((NFactorial * KFactorial) / NminusKFactorial));
  Readln;
end.

 