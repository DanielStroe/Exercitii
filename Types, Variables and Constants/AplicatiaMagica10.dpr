program AplicatiaMagica10;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Numar, Rezultat: integer;
begin
  Write('dati nr: ');
  Readln(Numar);
  Writeln('Inmultiti numarul cu 3 (apoi apasati enter)');
  Rezultat := Numar * 3;
  Readln;
  Writeln('Adaugati 6 la rezultat (apoi apasati enter)');
  Rezultat := Rezultat + 6;
  Readln;
  Writeln('Impartiti rezultatul la 3 (apoi apasati enter)');
  Rezultat := Rezultat div 3;
  Readln;
  Writeln('Scadeti din rezultat numarul introdus (apoi apasati enter)');
  Rezultat := Rezultat - Numar;
  Readln;
  Writeln(' Si rezultatul final este: ' + inttostr(Rezultat));
  Readln;
end.
 