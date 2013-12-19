program Ex06;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  NrDeGhicit = 22;
var
  NrIntrodus: Integer;
begin
  Write('Ghiciti numarul: ');
  Readln(NrIntrodus);
  while NrIntrodus <> NrDeGhicit do
  begin
    if NrIntrodus < NrDeGhicit then
    begin
      Write('Mai mult: ');
      Readln(NrIntrodus);
    end
    else
    begin
      Write('Mai putin: ');
      Readln(NrIntrodus);
    end;
  end;
  Write('Da');
  Readln;
end.

 