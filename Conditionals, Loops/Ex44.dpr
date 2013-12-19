program Ex44;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Luna: Integer;
resourcestring
  Mesaj = 'Luna introdusa are %d zile';
begin
  Writeln('Introduceti numarul lunii: ');
  Readln(Luna);
  if Luna <= 7 then
    if Luna <> 2 then
      if (Luna mod 2 = 0) then
        Writeln(Format(Mesaj, [30]))
      else
        Writeln(Format(Mesaj, [31]))
    else
      Writeln(Format(Mesaj, [28]))
  else
    if (Luna mod 2 = 0) then
      Writeln(Format(Mesaj, [31]))
    else
      Writeln(Format(Mesaj, [30]));
  Readln;
end.

