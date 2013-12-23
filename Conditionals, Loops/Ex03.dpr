program Ex03;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  nota: Integer;
resourcestring
  Mesaj = 'Ai luat nota %s !';
begin
  Write('Introduceti nota(in format american): ');
  Readln(nota);
  case nota of
    90..100: Writeln(Format(mesaj, ['A']));
    80..89: Writeln(Format(mesaj, ['B']));
    70..79: Writeln(Format(mesaj, ['C']));
    60..69: Writeln(Format(mesaj, ['D']));
    0..59: Writeln(Format(mesaj, ['F']));
  else Writeln('Nota trebuie sa fie intre 0 si 100');
  end;
  Readln;
end.

 