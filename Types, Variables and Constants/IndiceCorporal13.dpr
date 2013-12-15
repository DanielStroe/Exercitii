program IndiceCorporal13;

{$APPTYPE CONSOLE}

uses
  SysUtils, Math;

var
  greutate, inaltime, IMC: double;
begin
  write('dati greutatea: ');
  readln(greutate);
  write('dati inaltimea: ');
  readln(inaltime);
  IMC := power(greutate/inaltime , 2);
  write(floattostr(IMC));
  readln;
end.
 