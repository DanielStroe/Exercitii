program AriaCercului3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  pi = 3.14;
var
  raza: integer;
begin
   write(' Raza cercului = ');
   Readln(raza);
   write('Aria cercului = ' + floattostr(pi*raza*raza));
   Readln;
end.
 