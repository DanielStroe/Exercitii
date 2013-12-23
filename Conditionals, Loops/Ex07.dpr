program Ex07;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  nr1, nr2, nr3: Integer;
resourcestring
  Mesaj = 'Semnul produsului celor trei numere este: %s';
begin
  Write('Introduceti primul numar: ');
  Readln(nr1);
  Write('Introduceti al doilea numar: ');
  Readln(nr2);
  Write('Introduceti al treilea numar: ');
  Readln(nr3);
  if ((nr1 < 0) and (nr2 < 0) and (nr3 < 0)) or
    (((nr1 < 0) and (nr2 > 0) and (nr3 > 0)) or ((nr1 > 0) and (nr2 < 0) and (nr3 > 0)) or ((nr1 > 0) and (nr2 > 0) and (nr3 < 0))) then
    Write(Format(Mesaj, ['-']))
  else
    Write(Format(Mesaj, ['+']));
  Readln;
end.

