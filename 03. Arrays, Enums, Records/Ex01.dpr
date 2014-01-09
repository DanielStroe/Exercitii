program Ex01;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  Numere: array of integer;
  i, n: integer;
resourcestring
  cIntroducetiAlNleaNr = 'Introduceti al %d numar: ';
  cIntroducetiPrimulNr = 'Introduceti primul numar: ';
begin
  Write('Introduceti n: ');
  Readln(n);
  SetLength(Numere, n);
  
  for i := 0 to n - 1 do
  begin
    if i = 0 then Write(cIntroducetiPrimulNr)
    else Write(Format(cIntroducetiAlNleaNr, [i + 1]));
    Readln(Numere[i]);
  end;

  for i := 0 to n - 1 do
  begin
    write(inttostr(Numere[i]) + ' ');
  end;
  Readln;
end.

