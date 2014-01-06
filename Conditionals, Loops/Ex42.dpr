program Ex42;

{$APPTYPE CONSOLE}

uses
  SysUtils;
const
  Litere: set of Char = ['A'..'Z'];
var
  NrVocA, NrVocE, NrVocI, NrVocO, NrVocU, i, NrLitere: Integer;
  Propozitie: string;
resourcestring
  Mesaj = 'Vocala %s apare de %d (%s procente) ';
  MesajNrLitere = 'Propozitia are %d litere ';
begin
  Write('Propozitia: ');
  Readln(Propozitie);
  NrVocA := 0;
  NrVocE := 0;
  NrVocI := 0;
  NrVocO := 0;
  NrVocU := 0;
  NrLitere := 0;
  for i := 1 to Length(Propozitie) do
  begin
    if UpCase(Propozitie[i]) in Litere then
    begin
      case UpCase(Propozitie[i]) of
        'A': Inc(NrVocA);
        'E': Inc(NrVocE);
        'I': Inc(NrVocI);
        'O': Inc(NrVocO);
        'U': Inc(NrVocU);
      else ;
      end;
      Inc(NrLitere);
    end;
  end;
  Writeln(Format(Mesaj, ['a', NrVocA, FloatToStr((NrVocA / NrLitere) * 100)]));
  Writeln(Format(Mesaj, ['e', NrVocE, FloatToStr((NrVocE / NrLitere) * 100)]));
  Writeln(Format(Mesaj, ['i', NrVocI, FloatToStr((NrVocI / NrLitere) * 100)]));
  Writeln(Format(Mesaj, ['o', NrVocO, FloatToStr((NrVocO / NrLitere) * 100)]));
  Writeln(Format(Mesaj, ['u', NrVocU, FloatToStr((NrVocU / NrLitere) * 100)]));
  Writeln(Format(MesajNrLitere, [NrLitere]));
  Readln;
end.

