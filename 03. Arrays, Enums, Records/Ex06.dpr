program Ex06;

{$APPTYPE CONSOLE}

uses
  SysUtils;
type
  TPersoana = record
    VarstaCititor, VenitAnualCititor: integer;
    SexCititor: string;
  end;
const
  NrCatVarsta = 5;
  NrCatVenit = 4;
  cGrupareVarsta: array[1..NrCatVarsta] of string = ('sub 20 ani', 'intre 20 si 29 ani', 'intre 30 si 39 ani',
    'intre 40 si 49 ani', 'peste 50 ani');
  cGrupareVenit: array[1..NrCatVenit] of string = ('sub 30000', 'intre 30000 si 49999', 'intre 50000 si 69999', 'peste 70000');
var
  Cititor: array of TPersoana;
  NrCititori, i: integer;
  GrupareVarsta: array[1..NrCatVarsta] of integer;
  GrupareVenit: array[1..NrCatVenit] of integer;

resourcestring
  cIntroducetiNrCititori = 'Introduceti numarul de cititori: ';
  cIntroducetiVarsta = 'Introduceti varsta cititorului: ';
  cIntroducetiSexul = 'Introduceti sexul cititorului: ';
  cIntroducetiVenitul = 'Introduceti venitul anual al cititorului: ';
  cNumarulDeCititori = '%d cititori %s';

begin
  Write(cIntroducetiNrCititori);
  Readln(NrCititori);
  SetLength(Cititor, NrCititori);

  for i := 0 to NrCititori - 1 do
  begin
    Write(cIntroducetiVarsta);
    Readln(Cititor[i].VarstaCititor);
    Write(cIntroducetiSexul);
    Readln(Cititor[i].SexCititor); //desi nu-l folosim la nimic
    Write(cIntroducetiVenitul);
    Readln(Cititor[i].VenitAnualCititor);
    case Cititor[i].VarstaCititor of
      20..29: Inc(GrupareVarsta[2]);
      30..39: Inc(GrupareVarsta[3]);
      40..49: Inc(GrupareVarsta[4]);
    else
      if Cititor[i].VarstaCititor < 19 then
        Inc(GrupareVarsta[1])
      else
        Inc(GrupareVarsta[5]);
    end;
    case Cititor[i].VenitAnualCititor of
      30000..49999: Inc(GrupareVenit[2]);
      50000..69999: Inc(GrupareVenit[3]);
    else
      if Cititor[i].VenitAnualCititor < 30000 then
        Inc(GrupareVenit[1])
      else
        Inc(GrupareVenit[4]);
    end;
  end;
  for i := 1 to NrCatVarsta do
    Writeln(Format(cNumarulDeCititori, [GrupareVarsta[i], cGrupareVarsta[i]]));
  for i := 1 to NrCatVenit do
    Writeln(Format(cNumarulDeCititori, [GrupareVenit[i], cGrupareVenit[i]]));
  Readln;
end.

