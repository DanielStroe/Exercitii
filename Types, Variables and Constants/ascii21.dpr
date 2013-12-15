program ascii21;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  litera: char;
begin
  write('Introduceti litera: ');
  readln(litera);
  write('codul ASCII al literei ' + litera + ' este ' + inttostr(ord(litera)));
  readln;
end.
 