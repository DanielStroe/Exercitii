program Ex32;

{$APPTYPE CONSOLE}

uses
  SysUtils, Math;

var
  CubDeNr, nr: double;
  litera: char;
begin
  Write('Introduceti nr: ');
  Readln(nr);
  repeat
    CubDeNr := Power(nr, 3);
    Writeln(floattostr(CubDeNr));
    Writeln('Doriti sa continuati? d/D - DA');
    Readln(litera);
    nr := CubDeNr;
  until ((litera <> 'd') and (litera <> 'D'));
  Readln;
end.

 