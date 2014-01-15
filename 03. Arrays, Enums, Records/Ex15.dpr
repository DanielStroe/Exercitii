program Ex15;

{$APPTYPE CONSOLE}

uses
  SysUtils;
type
  TZileSapt = (Luni = 1, Marti, Miercuri, Joi, Vineri, Sambata, Duminica);
var
  ZiIntrodusa: integer;
  ZileLucratoare: set of 1..5;
  ZileNelucratoare: set of 5..6;
const
  cZileSapt: array[1..7] of string = ('Luni', 'Marti', 'Miercuri', 'Joi', 'Vineri', 'Sambata', 'Duminica');
resourcestring
  cIntroducetiZiua = 'Introduceti numarul zilei: ';
  cZi = ' este zi %s';
  cEroare = 'Ziua introdusa nu este corecta!';
begin
  ZileLucratoare := [ord(Luni)..Ord(Vineri)];
  ZileNelucratoare := [ord(Sambata), ord(Duminica)];
  Write(cIntroducetiZiua);
  Readln(ZiIntrodusa);

  if ZiIntrodusa in [1..7] then
  begin
    Write(cZileSapt[ZiIntrodusa]);
    if ZiIntrodusa in ZileLucratoare then
      Write(Format(cZi, ['lucratoare']))
    else if ZiIntrodusa in ZileNelucratoare then
      Write(Format(cZi, ['nelucratoare']));
  end
  else
    Write(cEroare);
  readln;
end.

