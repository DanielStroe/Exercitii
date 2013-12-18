program Ex07;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  nr1, nr2, nr3, produs: Integer;
resourcestring
  Mesaj = 'Semnul produsului celor trei numere este: ';
begin
  Write('Introduceti primul numar: ');
  Readln(nr1);
  Write('Introduceti al doilea numar: ');
  Readln(nr2);
  Write('Introduceti al treilea numar: ');
  Readln(nr3);
  produs := nr1 * nr2 * nr3;
  if produs > 0 then
    Writeln(Mesaj + '+')
  else Writeln(Mesaj + '-');

  Readln;
end.

