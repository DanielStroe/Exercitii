program Ex22;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  n, x, NFactorial, i: integer;
  suma: double;
begin
  Write('N = ');
  Readln(n);
  Write('X = ');
  Readln(x);
  while ((n < 0) or (x < 0)) do
  begin
    Writeln('Ambele numere pozitive!');
    Write('N = ');
    Readln(n);
    Write('X = ');
    Readln(x);
  end;
  NFactorial := 1;
  suma := 1; //am pus 1 deoarece este 1 este primul termen ;
  for i := 1 to n do
  begin
    NFactorial := NFactorial * i;
    suma := suma + NFactorial / n * x;
  end;
  Writeln('1 + 1!/X + 2!/2*X + ... + N!/N*X = ' + floattostr(suma));
  Readln;
end.

