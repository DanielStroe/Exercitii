program Ex43;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  an1, an2: integer;
resourcestring
  mesaj = 'Anul %d %s bisect';
begin
  Write('Introduceti primul an: ');
  Readln(an1);
  Write('Introduceti al doilea an: ');
  Readln(an2);
  if (((an1 mod 4 = 0) and (an1 mod 100 <> 0)) or (an1 mod 400 = 0)) then
    Writeln(Format(mesaj, [1, 'este']))
  else
    Writeln(Format(mesaj, [1, 'nu este']));
  if (((an2 mod 4 = 0) and (an2 mod 100 <> 0)) or (an2 mod 400 = 0)) then
    Writeln(Format(mesaj, [2, 'este']))
  else
    Writeln(Format(mesaj, [2, 'nu este']));
  Readln;
end.

 