program Ex07;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  Raspunsuri: array[0..7] of string = ('Nu stiu!', 'Ce-mi dai sa-ti spun?', 'Doar necazuri.',
    'Multa fericire.', 'Numerele de la loto.', 'Teme,teme si iar teme.', 'Multi copii', 'Prietenii adevarate');
resourcestring
  cIntrebare = 'Ce imi rezerva viitorul?';
begin
  Randomize;
  Writeln(cIntrebare);
  Writeln(Raspunsuri[Random(8)]);
  Readln;
end.

