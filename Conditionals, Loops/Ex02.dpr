program Ex02;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  NotaFelicitari = 10;
var
  nota: Integer;
begin
  Write('Introduceti nota: ');
  Readln(nota);
  case nota of
    NotaFelicitari: Writeln('Felicitari!');
  else ;
  end;
  Readln;
end.

 