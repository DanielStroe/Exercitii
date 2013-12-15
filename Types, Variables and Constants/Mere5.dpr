program Mere5;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  NrMereInitial, NrMereDorite: integer;
begin
  Write('Cate mere aveti? ');
  Readln(NrMereInitial);
  Write('Cate mere va mai doriti? ');
  Readln(NrMereDorite);
  Write('Veti avea ' + inttostr(NrMereInitial + NrMereDorite) + ' mere in final');
  Readln;
end.
 