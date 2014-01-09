program Ex09;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  XPunctStartDreptunghi = 1;
  XPunctStopDreptunghi = 5;
  YPunctStartDreptunghi = 1;
  YPunctStopDreptunghi = 5;
var
  XPunct, YPunct: double;
resourcestring
  mesaj = 'Punctul %s in interiorul dreptunghiului';
begin
  Write('Introduceti coordonata X a punctului: ');
  Readln(XPunct);
  Write('Introduceti coordonata Y a punctului: ');
  Readln(YPunct);

  if (((XPunct >= XPunctStartDreptunghi) and (XPunct <= XPunctStopDreptunghi)) and
    ((YPunct >= YPunctStartDreptunghi) and (YPunct <= YPunctStopDreptunghi))) then
    Writeln(Format(mesaj, ['se afla']))
  else
    Writeln(Format(mesaj, ['nu se afla']));
  Readln;
end.

 