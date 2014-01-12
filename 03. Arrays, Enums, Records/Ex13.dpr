program Ex13;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  TablaJoc: array[1..3] of array[1..3] of char;
  CoordX, CoordY, i, NrMutare, Castigator: integer;
resourcestring
  cIntroducetiCasuta = 'Introduceti casuta(jucator %d): ';
  cReintroducetiCasuta = 'Casuta a fost deja completata.Reintroduceti casuta(jucator %d): ';
  cNuACastigatNimeni = 'Nu a castigat nimeni!';
  cACastigatJucatorul = 'A castigat jucatorul %d !';
begin
  Castigator := 2; //deocamdata nu e nici un castigator
  NrMutare := 1;
  repeat
    if NrMutare mod 2 <> 0 then
      Writeln(Format(cIntroducetiCasuta, [1]))
    else
      Writeln(Format(cIntroducetiCasuta, [2]));
    Readln(CoordX); Readln(CoordY);
    while ((TablaJoc[CoordX, CoordY] = 'x') or (TablaJoc[CoordX, CoordY] = '0')) do
    begin
      if NrMutare mod 2 <> 0 then
        Writeln(Format(cReintroducetiCasuta, [1]))
      else
        Writeln(Format(cReintroducetiCasuta, [2]));
      Readln(CoordX); Readln(CoordY);
    end;
//daca NrMutare impar, a introdus casuta jucatorul 1, altfel jucatorul 2 a introdus.
//NrMutare nu poate fi mai mare de 9(nr maxim de mutari poate fi 9)
    if NrMutare mod 2 <> 0 then
      TablaJoc[CoordX, CoordY] := 'x'
    else
      TablaJoc[CoordX, CoordY] := '0';

    if ((TablaJoc[1, 1] = TablaJoc[1, 2]) and (TablaJoc[1, 1] = TablaJoc[1, 3]) and (TablaJoc[1, 1] in ['0', 'x'])) or
      ((TablaJoc[2, 1] = TablaJoc[2, 2]) and (TablaJoc[2, 1] = TablaJoc[2, 3]) and (TablaJoc[2, 1] in ['0', 'x'])) or
      ((TablaJoc[3, 1] = TablaJoc[3, 2]) and (TablaJoc[3, 1] = TablaJoc[3, 3]) and (TablaJoc[3, 1] in ['0', 'x'])) or
      ((TablaJoc[1, 1] = TablaJoc[2, 1]) and (TablaJoc[1, 1] = TablaJoc[3, 1]) and (TablaJoc[1, 1] in ['0', 'x'])) or
      ((TablaJoc[1, 2] = TablaJoc[2, 2]) and (TablaJoc[1, 2] = TablaJoc[3, 2]) and (TablaJoc[1, 2] in ['0', 'x'])) or
      ((TablaJoc[1, 3] = TablaJoc[2, 3]) and (TablaJoc[1, 3] = TablaJoc[3, 3]) and (TablaJoc[1, 3] in ['0', 'x'])) or
      ((TablaJoc[1, 1] = TablaJoc[2, 2]) and (TablaJoc[1, 1] = TablaJoc[3, 3]) and (TablaJoc[1, 1] in ['0', 'x'])) or
      ((TablaJoc[1, 3] = TablaJoc[2, 2]) and (TablaJoc[1, 3] = TablaJoc[3, 1]) and (TablaJoc[1, 3] in ['0', 'x'])) then
      Castigator := NrMutare mod 2; //daca este 0 a castigat jucator 2, daca este 1 a castigat jucator 1
    Inc(NrMutare);
  until (NrMutare > 9) or ((Castigator >= 0) and (Castigator <= 1));

  case Castigator of
    0: Writeln(Format(cACastigatJucatorul, [2]));
    1: Writeln(Format(cACastigatJucatorul, [1]));
    2: Writeln(cNuACastigatNimeni);
  end;
  Readln;
end.

