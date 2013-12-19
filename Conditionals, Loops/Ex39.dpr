program Ex39;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  CuvIntrodus, CuvantInversat: string;
  i, LungimeCuv: Integer;
  EstePalindrom: Boolean;
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
  EstePalindrom := True;
  for i := 1 to LungimeCuv div 2 do
    if CuvIntrodus[i] <> CuvantInversat[i] then
      EstePalindrom := False;
  if EstePalindrom then
    Writeln(Format(Mesaj, ['este']))
  else
    Writeln(Format(Mesaj, ['nu este']));
  Readln;
end.

