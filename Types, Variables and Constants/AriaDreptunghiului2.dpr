program AriaDreptunghiului2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Lungime,Latime: integer;
  Aria: Double;
begin
  Write('Lungime: ');
  Readln(Lungime);
  Write('Latime: ');
  Readln(Latime);
  Aria := Lungime * Latime;
  Write('Aria dreptunghiului = '+ floattostr(Aria));
  Readln;
end.
 