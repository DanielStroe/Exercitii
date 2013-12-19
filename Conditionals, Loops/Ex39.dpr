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
  for i := 1 to LungimeCuv div 2 do
    if CuvIntrodus[i] <> CuvantInversat[LungimeCuv - i + 1] then
    begin
      Writeln(Format(Mesaj, ['nu este']));
      Readln;
      Exit;
    end;
  Writeln(Format(Mesaj, ['este']));
  Readln;
end.

