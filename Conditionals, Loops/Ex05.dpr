program Ex05;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  nr1, nr2, nr3, min, max: integer;
begin
  Write('Introduceti primul numar: ');
  Readln(nr1);
  Write('Introduceti al doilea numar: ');
  Readln(nr2);
  Write('Introduceti al 3lea numar: ');
  Readln(nr3);
  if ((nr1 <= nr2) and (nr1 <= nr3)) then
    min := nr1
  else
    if ((nr2 <= nr1) and (nr2 <= nr3)) then
      min := nr2
    else
      min := nr3;

  if ((nr1 >= nr2) and (nr1 >= nr3)) then
    max := nr1
  else if ((nr2 >= nr1) and (nr2 >= nr3)) then
    max := nr2
  else
    max := nr3;
  Writeln('Cel mai mare numar: ' + inttostr(max));
  Writeln('Cel mai mic numar: ' + inttostr(min));
  Readln;
end.

 