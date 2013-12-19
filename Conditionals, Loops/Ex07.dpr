program Ex07;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  nr1, nr2, nr3: Integer;
resourcestring
  Mesaj = 'Semnul produsului celor trei numere este: ';
begin
  Write('Introduceti primul numar: ');
  Readln(nr1);
  Write('Introduceti al doilea numar: ');
  Readln(nr2);
  Write('Introduceti al treilea numar: ');
  Readln(nr3);
  if ((nr1 < 0) or (nr2 < 0) or (nr3 < 0)) then
    Writeln(Mesaj + '-')
  else Writeln(Mesaj + '+');

  Readln;
end.

