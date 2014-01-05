program Ex28;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  NrZileLuna = 30;
var
  NrZileLuni, NrZileMarti, NrZileMiercuri, NrZileJoi, NrZileVineri, NrZileSambata, NrZileDuminica: Integer;
  ZiLuni, ZiMarti, ZiMiercuri, ZiJoi, ZiVineri, ZiSambata, ZiDuminica, ZiIntrodusa: Integer;
resourcestring
  Mesaj = 'Luna are %d zile de luni, %d zile de marti, %d zile de miercuri, %d zile de joi, ' +
    '%d zile de vineri, %d zile de sambata, %d zile de duminica.';
begin
  NrZileLuni := 0;
  NrZileMarti := 0;
  NrZileMiercuri := 0;
  NrZileJoi := 0;
  NrZileVineri := 0;
  NrZileSambata := 0;
  NrZileDuminica := 0;
  ZiLuni := 0;
  ZiMarti := 0;
  ZiMiercuri := 0;
  ZiJoi := 0;
  ZiVineri := 0;
  ZiSambata := 0;
  ZiDuminica := 0;
  Write('Introduceti prima zi a lunii: ');
  Readln(ZiIntrodusa);
  case ZiIntrodusa of
    1: begin
        ZiLuni := 1;
        ZiMarti := 2;
        ZiMiercuri := 3;
        ZiJoi := 4;
        ZiVineri := 5;
        ZiSambata := 6;
        ZiDuminica := 7;
      end;
    2: begin
        ZiLuni := 7;
        ZiMarti := 1;
        ZiMiercuri := 2;
        ZiJoi := 3;
        ZiVineri := 4;
        ZiSambata := 5;
        ZiDuminica := 6;
      end;
    3: begin
        ZiLuni := 6;
        ZiMarti := 7;
        ZiMiercuri := 1;
        ZiJoi := 2;
        ZiVineri := 3;
        ZiSambata := 4;
        ZiDuminica := 5;
      end;
    4: begin
        ZiLuni := 5;
        ZiMarti := 6;
        ZiMiercuri := 7;
        ZiJoi := 1;
        ZiVineri := 2;
        ZiSambata := 3;
        ZiDuminica := 4;
      end;
    5: begin
        ZiLuni := 4;
        ZiMarti := 5;
        ZiMiercuri := 6;
        ZiJoi := 7;
        ZiVineri := 1;
        ZiSambata := 2;
        ZiDuminica := 3;
      end;
    6: begin
        ZiLuni := 3;
        ZiMarti := 4;
        ZiMiercuri := 5;
        ZiJoi := 6;
        ZiVineri := 7;
        ZiSambata := 1;
        ZiDuminica := 2;
      end;
    7: begin
        ZiLuni := 2;
        ZiMarti := 3;
        ZiMiercuri := 4;
        ZiJoi := 5;
        ZiVineri := 6;
        ZiSambata := 7;
        ZiDuminica := 1;
      end;
  else Writeln('Ziua introdusa nu este o zi a saptamnii!');
  end;

  while ZiLuni <= NrZileLuna do
  begin
    ZiLuni := ZiLuni + 7;
    Inc(NrZileLuni);
  end;

  while ZiMarti <= NrZileLuna do
  begin
    ZiMarti := ZiMarti + 7;
    Inc(NrZileMarti);
  end;

  while ZiMiercuri <= NrZileLuna do
  begin
    ZiMiercuri := ZiMiercuri + 7;
    Inc(NrZileMiercuri);
  end;

  while ZiJoi <= NrZileLuna do
  begin
    ZiJoi := ZiJoi + 7;
    Inc(NrZileJoi);
  end;

  while ZiVineri <= NrZileLuna do
  begin
    ZiVineri := ZiVineri + 7;
    Inc(NrZileVineri);
  end;

  while ZiSambata <= NrZileLuna do
  begin
    ZiSambata := ZiSambata + 7;
    Inc(NrZileSambata);
  end;

  while ZiDuminica <= NrZileLuna do
  begin
    ZiDuminica := ZiDuminica + 7;
    Inc(NrZileDuminica);
  end;

  Writeln(Format(Mesaj, [NrZileLuni, NrZileMarti, NrZileMiercuri, NrZileJoi, NrZileVineri,
    NrZileSambata, NrZileDuminica]));
  Readln;
end.

 