program Ex23;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  n, i, aux, predecesor, antepredecesor, suma: integer;
resourcestring
  mesaj = 'Suma primelor %d numere din sirul lui Fibonaci este: ';
begin
  Write('n = ');
  Readln(n);
  predecesor := 1;
  antepredecesor := 1;
  suma := 2; // predecesor + antepredecesor
  for i := 3 to n do
  begin
    aux := antepredecesor + predecesor;
    suma := suma + aux;
    antepredecesor := predecesor;
    predecesor := aux;
  end;
  Writeln(Format(mesaj, [n]) + inttostr(suma));
  Readln;
end.

 