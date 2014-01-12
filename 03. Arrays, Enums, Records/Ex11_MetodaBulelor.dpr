program Ex11_MetodaBulelor;

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

 // 2.metoda bulelor
  repeat
    ordonat := true;
    for i := 0 to NrElem - 2 do
      if NumereIntroduse[i] > NumereIntroduse[i + 1] then
      begin
        aux := NumereIntroduse[i];
        NumereIntroduse[i] := NumereIntroduse[i + 1];
        NumereIntroduse[i + 1] := aux;
        ordonat := false;
      end;
  until ordonat;
  for i := 0 to NrElem - 1 do
    Write(inttostr(NumereIntroduse[i]) + ' ');
  Readln;
end.

