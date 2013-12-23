program Ex12;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  nr1, nr2, nr3, nr4, nr5: Integer;
resourcestring
  mesaj = '%s cel putin un subset a carui suma este egala cu zero!';
begin
  Writeln('Introduceti 5 numere: ');
  Readln(nr1);
  Readln(nr2);
  Readln(nr3);
  Readln(nr4);
  Readln(nr5);
  if (((nr1 = 0) or (nr2 = 0) or (nr3 = 0) or (nr4 = 0) or (nr5 = 0)) or
    ((nr1 + nr2 = 0) or (nr1 + nr3 = 0) or (nr1 + nr4 = 0) or (nr1 + nr5 = 0) or
    (nr2 + nr3 = 0) or (nr2 + nr4 = 0) or (nr2 + nr5 = 0) or (nr3 + nr4 = 0) or (nr3 + nr5 = 0) or (nr4 + nr5 = 0)) or
    ((nr1 + nr2 + nr3 = 0) or (nr1 + nr2 + nr4 = 0) or (nr1 + nr2 + nr5 = 0) or (nr1 + nr3 + nr4 = 0) or (nr1 + nr3 + nr5 = 0) or (nr1 + nr4 + nr5 = 0)) or
    ((nr1 + nr2 + nr3 + nr4 = 0) or (nr1 + nr2 + nr3 + nr5 = 0) or (nr1 + nr2 + nr4 + nr5 = 0)) or
    (nr1 + nr2 + nr3 + nr4 + nr5 = 0)) then
    Writeln(Format(mesaj, ['Exista']))
  else
    Writeln(Format(mesaj, ['Nu exista']));
  Readln;
end.

