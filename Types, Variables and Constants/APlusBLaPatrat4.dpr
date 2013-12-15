program APlusBLaPatrat4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  a,b: integer;
  rezultat: double;
begin
  write('a = ');
  Readln(a);
  Write('b = ');
  Readln(b);
  rezultat := 0;
  rezultat := a*a + 2*a*b + b*b;
  Write(floattostr(rezultat));
  Readln;
end.
 