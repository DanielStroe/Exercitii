program Distana27;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  PretCombustibil = 6;
  ConsumLaSutaDeKm = 12;
var
  SumaAlimentata, DistDeParcurs: double;

begin
  Write('De cat alimentam? ');
  readln(SumaAlimentata);
  DistDeParcurs := 100 * (SumaAlimentata/PretCombustibil) / ConsumLaSutaDeKm;
  write('distanta de parcurs= ' + floattostr(DistDeParcurs));
  readln; 
end.
 