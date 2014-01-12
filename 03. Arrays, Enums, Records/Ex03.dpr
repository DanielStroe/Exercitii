program Ex03;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TVoturi = record
    NrVoturi18to30: integer;
    NrVoturi31to45: integer;
    NrVoturi46to95: integer;
  end;
var
  NrVoturiPerSector: array[1..7] of TVoturi;
  NrVotanti, i, VarstaPers,SectorVotat: integer;
resourcestring
  cIntroducetiVarstaPers = 'Introduceti varsta persoanei: ';
  cIntroducetiSectorulPers = 'Introduceti sectorul pe care-l voteaza: ';
  cNrVotantiPerSector = 'Sectorul %d are %d voturi intre 18 si 30, %d voturi intre 31 si 45, %d voturi intre 46 si 95.';
begin
  Write('Introduceti numarul de persoane ce voteaza: ');
  Readln(NrVotanti);

  for i := 0 to NrVotanti - 1 do
  begin
    Write(cIntroducetiVarstaPers);
    Readln(VarstaPers);
    Write(cIntroducetiSectorulPers);
    Readln(SectorVotat);
    case SectorVotat of
      1: case VarstaPers of
          18..30: Inc(NrVoturiPerSector[1].NrVoturi18to30);
          31..45: Inc(NrVoturiPerSector[1].NrVoturi31to45);
          46..95: Inc(NrVoturiPerSector[1].NrVoturi46to95);
        end;
      2: case VarstaPers of
          18..30: Inc(NrVoturiPerSector[2].NrVoturi18to30);
          31..45: Inc(NrVoturiPerSector[2].NrVoturi31to45);
          46..95: Inc(NrVoturiPerSector[2].NrVoturi46to95);
        end;
      3: case VarstaPers of
          18..30: Inc(NrVoturiPerSector[3].NrVoturi18to30);
          31..45: Inc(NrVoturiPerSector[3].NrVoturi31to45);
          46..95: Inc(NrVoturiPerSector[3].NrVoturi46to95);
        end;
      4: case VarstaPers of
          18..30: Inc(NrVoturiPerSector[4].NrVoturi18to30);
          31..45: Inc(NrVoturiPerSector[4].NrVoturi31to45);
          46..95: Inc(NrVoturiPerSector[4].NrVoturi46to95);
        end;
      5: case VarstaPers of
          18..30: Inc(NrVoturiPerSector[5].NrVoturi18to30);
          31..45: Inc(NrVoturiPerSector[5].NrVoturi31to45);
          46..95: Inc(NrVoturiPerSector[5].NrVoturi46to95);
        end;
      6: case VarstaPers of
          18..30: Inc(NrVoturiPerSector[6].NrVoturi18to30);
          31..45: Inc(NrVoturiPerSector[6].NrVoturi31to45);
          46..95: Inc(NrVoturiPerSector[6].NrVoturi46to95);
        end;
      7: case VarstaPers of
          18..30: Inc(NrVoturiPerSector[7].NrVoturi18to30);
          31..45: Inc(NrVoturiPerSector[7].NrVoturi31to45);
          46..95: Inc(NrVoturiPerSector[7].NrVoturi46to95);
        end;
    end;
  end;

  for i := 1 to 7 do
    Writeln(Format(cNrVotantiPerSector, [i, NrVoturiPerSector[i].NrVoturi18to30,
      NrVoturiPerSector[i].NrVoturi31to45, NrVoturiPerSector[i].NrVoturi46to95]));
  Readln;
end.

