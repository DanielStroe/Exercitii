program Ex11_MetodaBubbleSort;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  NumereIntroduse: array of Integer;
  i, j, NrElem, aux: Integer;
  ordonat: boolean;
resourcestring
  cIntroducetiNrElem = 'Cate numere doriti sa introduceti? ';
  cIntroducetiPrimulNr = 'Introduceti primul numar: ';
  cIntroducetiAlNLeaNr = 'Introduceti al %d-lea numar: ';
begin
  Write(cIntroducetiNrElem);
  Readln(NrElem);
  SetLength(NumereIntroduse, NrElem);
  for i := 0 to NrElem - 1 do
  begin
    if i = 0 then
      Write(cIntroducetiPrimulNr)
    else
      Write(Format(cIntroducetiAlNLeaNr, [i + 1]));
    Readln(NumereIntroduse[i]);
  end;
  
 // 1.bubble sort
  for i := 0 to NrElem - 2 do
    for j := i + 1 to NrElem - 1 do
      if NumereIntroduse[i] > NumereIntroduse[j] then
      begin
        aux := NumereIntroduse[i];
        NumereIntroduse[i] := NumereIntroduse[j];
        NumereIntroduse[j] := aux;
      end;

  for i := 0 to NrElem - 1 do
    Write(inttostr(NumereIntroduse[i]) + ' ');
  Readln;
end.

