program Ex19;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i: Integer;
resourcestring
  MesajNrElefanti = '%d elefanti se leganau pe o panza de paianjeni';
  Mesaj = 'Si cum panza nu se rupea a mai venit 1 elefant';
begin
  Writeln('1 elefant se legana pe o panza de paianjeni');
  Writeln('Si cum panza nu se rupea a mai venit 1 elefant');
  for i := 2 to 100 do
  begin
    Writeln(Format(MesajNrElefanti, [i]));
    if (i <> 100) then
      Writeln(Mesaj);
  end;
  Writeln('Si panza s-a rupt...');
  Readln;
end.

