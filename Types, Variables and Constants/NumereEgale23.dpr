program NumereEgale23;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Nr1, Nr2: Integer;
  NrEgale: Boolean;
begin
  write('Introduceti primul numar: ');
  readln(Nr1);
  write('Introduceti al doilea numar: ');
  readln(Nr2);
  NrEgale := Nr1 = Nr2;
  write(NrEgale);      
  Readln;
end.
