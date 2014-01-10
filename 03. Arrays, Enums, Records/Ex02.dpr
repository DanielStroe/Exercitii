program Ex02;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  NumereIntroduse: array of Integer;
  i,SumaNrIntroduse, n: Integer;
resourcestring
  cIntroducetiAlNleaNr = 'Introduceti al %d numar: ';
  cIntroducetiPrimulNr = 'Introduceti primul numar: ';
  cAfisareNrSiDif = 'Numarul: %d, diferenta dintre numar si media aritmetica a numerelor introduse: %n ';
begin
  Write('Introduceti n: ');
  Readln(n);
  SetLength(NumereIntroduse, n);
  
  SumaNrIntroduse := 0;
  for i := 0 to n - 1 do
  begin
    if i = 0 then Write(cIntroducetiPrimulNr)
    else Write(Format(cIntroducetiAlNleaNr, [i + 1]));
    Readln(NumereIntroduse[i]);
    SumaNrIntroduse := SumaNrIntroduse + NumereIntroduse[i];
  end;

  for i := 0 to n - 1 do
  begin
    Writeln(Format(cAfisareNrSiDif,[NumereIntroduse[i], (NumereIntroduse[i] - SumaNrIntroduse / n)]));
  end;
  Readln;
end.

 