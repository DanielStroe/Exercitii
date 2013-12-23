program Ex35;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  nota1, nota2, nota3: integer;
  media: double;
resourcestring
  mesaj = 'Nota: %s';
begin
  Writeln('Introduceti cele 3 note: ');
  Readln(nota1);
  Readln(nota2);
  Readln(nota3);
  media := (nota1 + nota2 + nota3) / 3;
  if media < 50 then
    Writeln(Format(mesaj, ['F']));
  if ((media >= 50) and (media < 70)) then
    Writeln(Format(mesaj, ['C']));
  if ((media >= 70) and (media < 90)) then
    Writeln(Format(mesaj, ['B']));
  if media >= 90 then
    Writeln(Format(mesaj, ['A']));
  Readln;
end.

