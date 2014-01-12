program Ex08;

{$APPTYPE CONSOLE}

uses
  SysUtils;
const
  NrLitereCuvant = 10;
  CuvantDeGhicit: array[1..NrLitereCuvant] of char = ('m', 'a', 't', 'e', 'm', 'a', 't', 'i', 'c', 'a');
  LiteraNeghicita = '_';
var
  CharIntrodus: char;
  CuvantGhicit: boolean;
  Cuvant: array[1..NrLitereCuvant] of char = ('_', '_', '_', '_', '_', '_', '_', '_', '_', '_');
  i: integer;
resourcestring
  cIntroducetiLitera = 'Introduceti litera: ';
  CFelicitari = 'Cuvantul a fost descoperit!';
begin
  for i := 1 to NrLitereCuvant do
    Write(string(Cuvant[i]));
  repeat
    CuvantGhicit := true;
    Writeln;
    Write(cIntroducetiLitera);
    Readln(CharIntrodus);
    for i := 1 to NrLitereCuvant do
    begin
      if CharIntrodus = CuvantDeGhicit[i] then
        Cuvant[i] := CharIntrodus;
      if Cuvant[i] = LiteraNeghicita then
        CuvantGhicit := false;
    end;
    for i := 1 to NrLitereCuvant do
      Write(string(Cuvant[i]));
  until CuvantGhicit;
  Writeln;
  Writeln(CFelicitari);
  Readln;
end.

