program Ex45;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  Populatie1989 = 5000000;
  RataDeces = 3;
  RataNastere = 7;
var
  PopulatieAn, i: integer;
resourcestring
  mesaj = 'Populatia in anul %d era: %s';
begin
  Writeln(Format(mesaj, [1989, FloatToStr(Populatie1989)]));
  PopulatieAn := Populatie1989;
  for i := 1990 to 2000 do
  begin
    PopulatieAn := PopulatieAn - (RataDeces * PopulatieAn) div 100 + (RataNastere * PopulatieAn) div 100;
    Writeln(Format(mesaj, [i, FloatToStr(PopulatieAn)]));
  end;
  Readln;
end.

 