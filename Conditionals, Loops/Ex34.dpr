program Ex34;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  VarstaPers: Integer;
const
  VarstaMinPtVot = 18;
resourcestring
  Mesaj = 'Persoana%s poate vota!';
begin
  Write('Introduceti varsta persoanei: ');
  Readln(VarstaPers);
  if VarstaPers >= VarstaMinPtVot then
    Writeln(Format(Mesaj, ['']))
  else Writeln(Format(Mesaj, [' nu']));
  Readln;
end.

 