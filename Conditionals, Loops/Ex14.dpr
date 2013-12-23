program Ex14;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  cifra: integer;
begin
  Write('Introduceti o cifra: ');
  Readln(cifra);
  case cifra of
    0: Writeln('zero');
    1: Writeln('unu');
    2: Writeln('doi');
    3: Writeln('trei');
    4: Writeln('patru');
    5: Writeln('cinci');
    6: Writeln('sase');
    7: Writeln('sapte');
    8: Writeln('opt');
    9: Writeln('noua');
  else Writeln('Nu ati introdus o cifra!');
  end;
  Readln;
end.

 