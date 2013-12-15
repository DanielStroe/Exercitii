program Intensitate19;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  U,R: double;
begin
  Write('U = ');
  readln(U);
  write('R = ');
  readln(R);
  write('I = U/R = ' + floattostr(U / R));
  readln;
end.
 