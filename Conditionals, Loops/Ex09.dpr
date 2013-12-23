program Ex09;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  PunctStartDreptunghi = 1;
  PunctStopDreptunghi = 5;
var
  XPunct, YPunct: double;
resourcestring
  mesaj = 'Punctul %s in interiorul dreptunghiului';
begin
  Write('Introduceti coordonata X a punctului: ');
  Readln(XPunct);
  Write('Introduceti coordonata Y a punctului: ');
  Readln(YPunct);

  if (((XPunct >= PunctStartDreptunghi) and (XPunct <= PunctStopDreptunghi)) and
    ((YPunct >= PunctStartDreptunghi) and (YPunct <= PunctStopDreptunghi))) then
    Writeln(Format(mesaj, ['se afla']))
  else
    Writeln(Format(mesaj, ['nu se afla']));
  Readln;
end.

 