program Ex04;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  NumarulEchipei: integer;
const
  Echipe: array[1..5] of string = ('A.C.S. Steagu Rosu Brasov', 'F.C. Brasov', 'F.C. Corona Brasov',
    'C.S. Junior Brasov', 'A.C.S. Tampa Brasov');
begin
  Write('Introduceti numarul echipei: ');
  Readln(NumarulEchipei);
  Writeln(Echipe[NumarulEchipei]);
  Readln;
end.

