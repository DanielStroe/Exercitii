program Ex10;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Math;

var
  a, b, c, delta: double;
begin
  Write('Introduceti a: ');
  Readln(a);
  Write('Introduceti b: ');
  Readln(b);
  Write('Introduceti c: ');
  Readln(c);
  delta := power(b, 2) - 4 * a * c;
  if delta > 0 then
    Writeln('Ecuatia are 2 radacini reale')
  else if delta = 0 then
    Writeln('Ecuatia are o radacina reala')
  else
    Writeln('Ecuatia are 2 radacini imaginare');
  Readln;
end.

 