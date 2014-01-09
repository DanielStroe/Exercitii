program Ex39;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  CuvIntrodus, CuvantInversat: string;
  i, LungimeCuv: Integer;
resourcestring
  Mesaj = 'Cuvantul introdus %s palindrom';
begin
  Write('Introduceti cuvantul: ');
  Readln(CuvIntrodus);
  CuvantInversat := '';
  LungimeCuv := Length(CuvIntrodus);
  for i := 1 to LungimeCuv do
  begin
    CuvantInversat := CuvIntrodus[i] + CuvantInversat;
  end;
  Writeln('Cuvantul inversat: ' + CuvantInversat);
  if SameText(CuvIntrodus, CuvantInversat) then
    Writeln(Format(Mesaj, ['este']))
  else
    Writeln(Format(Mesaj, ['nu este']));
  Readln;
end.

