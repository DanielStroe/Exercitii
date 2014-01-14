program Ex09;

{$APPTYPE CONSOLE}

uses
  SysUtils;
type
  TCarte = record
    NumarCarte: integer; //numarul cartii
    NumeCarte:string;//numele cartii...dama,popa,as,2,3...etc
    Extrasa: boolean; //daca a mai fost trasa din pachet cartea
    Culoare: integer; //ma folosesc de array-ul cCuloareCarte
  end;

var
  ToateCartile: array[1..52] of TCarte;
  CartiJucator1, CartiJucator2: array[1..26] of TCarte;
  i, aux, CastigateJucator1, CastigateJucator2: integer;
const
  cCuloareCarte: array[1..4] of string = ('Romb', 'Trefla', 'Rosie', 'Neagra');
  cNumeCarti:array[0..12] of string = ('2','3','4','5','6','7','8','9','10','Juve','Dama','Popa','As');
resourcestring
  cManaCastigataDeJucator = '   Mana castigata de jucatorul %d.';
  cEgalitate = '   Mana nu a fost castigata de nimeni.';
  cCartiExtrase = 'Jucator 1: %s %s - Jucator 2: %s %s';
  cCastigatorMeci = '   Meciul a fost castigat de jucatorul %d.';
  cEgalitateMeci = 'Meciul s-a terminat egal.';
begin
//Am impartit pachetul de carti in 4 , de la 1 la 13 sunt cartile de romb, 13..26 trefla si tot asa..
  Randomize;
  for i := 1 to 52 do
  begin
    ToateCartile[i].NumarCarte := i;
    ToateCartile[i].Extrasa := false; //sa fim siguri
    ToateCartile[i].Culoare := 0;
    ToateCartile[i].NumeCarte := '';
  end;
  CastigateJucator1 := 0; CastigateJucator2 := 0;

  for i := 1 to 26 do
  begin
    repeat
      aux := 1 + random(52); //caut o carte care n-a mai fost extrasa
    until not ToateCartile[aux].Extrasa;
    CartiJucator1[i].NumarCarte := ToateCartile[aux].NumarCarte mod 13; //a i-a carte a juc 1 este cartea(aux) din tot pachetul
    CartiJucator1[i].NumeCarte := cNumeCarti[ToateCartile[aux].NumarCarte mod 13];
    ToateCartile[aux].Extrasa := true; //a fost extrasa din pachet
    case ToateCartile[aux].NumarCarte of
      1..13: CartiJucator1[i].Culoare := 1;
      14..26: CartiJucator1[i].Culoare := 2;
      27..39: CartiJucator1[i].Culoare := 3;
      40..52: CartiJucator1[i].Culoare := 4;
    end;
  end;

  //Jucatorului 2 ii raman celelalte carti dar tot trebuie sa le amestecam
  for i := 1 to 26 do
  begin
    repeat
      aux := 1 + random(52); //caut o carte care n-a mai fost extrasa
    until not ToateCartile[aux].Extrasa;
    CartiJucator2[i].NumarCarte := ToateCartile[aux].NumarCarte mod 13; //a i-a carte a juc 1 este cartea(aux) din tot pachetul
    CartiJucator2[i].NumeCarte := cNumeCarti[ToateCartile[aux].NumarCarte mod 13];
    ToateCartile[aux].Extrasa := true; //a fost extrasa din pachet
    case ToateCartile[aux].NumarCarte of
      1..13: CartiJucator2[i].Culoare := 1;
      14..26: CartiJucator2[i].Culoare := 2;
      27..39: CartiJucator2[i].Culoare := 3;
      40..52: CartiJucator2[i].Culoare := 4;
    end;
  end;

  // acum incepe jocul...ieeeei
  for i := 1 to 26 do
  begin
    Writeln(Format(cCartiExtrase,[CartiJucator1[i].NumeCarte,cCuloareCarte[CartiJucator1[i].Culoare],
    CartiJucator2[i].NumeCarte,cCuloareCarte[CartiJucator2[i].Culoare] ]));
    if CartiJucator1[i].NumarCarte > CartiJucator2[i].NumarCarte then
    begin
      Inc(CastigateJucator1);
      Writeln(Format(cManaCastigataDeJucator, [1]));
    end
    else
      if CartiJucator1[i].NumarCarte < CartiJucator2[i].NumarCarte then
      begin
        Inc(CastigateJucator2);
        Writeln(Format(cManaCastigataDeJucator, [2]));
      end
      else
        Writeln(cEgalitate);
    Writeln;    
  end;

  if CastigateJucator1 > CastigateJucator2 then
    Writeln(Format(cCastigatorMeci, [1]))
  else
    if CastigateJucator1 < CastigateJucator2 then
      Writeln(Format(cCastigatorMeci, [2]))
    else Writeln(cEgalitateMeci);
  Readln;
end.

