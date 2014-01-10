program Ex10;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  NumereIntroduse: array of Integer;
  i, NrElem, Max, Min: Integer;
resourcestring
  cIntroducetiNrElem = 'Cate numere doriti sa introduceti? ';
  cIntroducetiPrimulNr = 'Introduceti primul numar: ';
  cIntroducetiAlNLeaNr = 'Introduceti al %d-lea numar: ';
  cMinSiMax = 'Minumul este %d si maximul este %d';
begin
  Write(cIntroducetiNrElem);
  Readln(NrElem);
  SetLength(NumereIntroduse, NrElem);
  Max := 0; Min := 0;
  for i := 0 to NrElem - 1 do
  begin
    if i = 0 then
      Write(cIntroducetiPrimulNr)
    else
      Write(Format(cIntroducetiAlNLeaNr, [i + 1]));
    Readln(NumereIntroduse[i]);
    if Max < NumereIntroduse[i] then
      Max := NumereIntroduse[i];
    if Min > NumereIntroduse[i] then
      Min := NumereIntroduse[i]
  end;
  Writeln(Format(cMinSiMax,[Min,Max]));
  Readln;
end.

 