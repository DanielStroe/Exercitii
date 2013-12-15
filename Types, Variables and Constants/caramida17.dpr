program caramida17;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Math;

const
  g = 32.174;
var
  t :integer;
begin
  write('t = ');
  readln(t);
  write('Viteza la timpul ' + inttostr(t) + ' este: ' + floattostr(1 / 2 * g * power(t, 2)));
  readln;
end.
 