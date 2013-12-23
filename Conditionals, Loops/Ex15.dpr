program Ex15;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  PoundsToKg = 0.453;
var
  CantLivre: double;
begin
  Write('Introduceti cantitatea in pounds(livre): ');
  Readln(CantLivre);
  while (CantLivre < 0) do
  begin
    Write('Introduceti cantitatea in pounds(livre): ');
    Readln(CantLivre);
  end;
  Writeln('Cantitatea introdusa in kg: ' + floattostr(CantLivre * PoundsToKg));
  Readln;
end.

 