program Ex38;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  n, nrgasite, i, j, SumaDiv: integer;
resourcestring
  mesaj = 'Primele %d numere perfecte: ';
begin
  Write('N = ');
  Readln(n);
  nrgasite := 0;
  i := 6; //este primul numar perfect
  while (nrgasite < n) do
  begin
    SumaDiv := 0;
    for j := 1 to (i div 2) do
      if (i mod j = 0) then
        SumaDiv := SumaDiv + j;
    if (SumaDiv = i) then
    begin
      Write(inttostr(i) + ' ');
      Inc(nrgasite);
    end;
    Inc(i);
  end;
  Readln;
end.

 