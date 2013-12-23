program Ex08;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  nr1, nr2, nr3, aux: integer;
resourcestring
  mesaj = 'Numerele in ordine crescatoare: %d, %d, %d';
begin
  Write('Introduceti primul numar: ');
  Readln(nr1);
  Write('Introduceti al 2lea numar: ');
  Readln(nr2);
  Write('Introduceti al 3lea numar: ');
  Readln(nr3);
  if nr1 > nr2 then
  begin
    aux := nr1;
    nr1 := nr2;
    nr2 := aux;
  end;
  if nr1 > nr3 then
  begin
    aux := nr1;
    nr1 := nr3;
    nr3 := aux;
  end;
  if nr2 > nr3
    then
  begin
    aux := nr2;
    nr2 := nr3;
    nr3 := aux;
  end;
  Writeln('Numerele ordonate crescator: ' + inttostr(nr1) + inttostr(nr2) + inttostr(nr3));
  Readln;
end.

