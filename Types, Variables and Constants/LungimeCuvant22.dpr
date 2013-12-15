program LungimeCuvant22;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  cuvant: string;
begin
  write('Introduceti cuvantul: ');
  readln(cuvant);
  write('Lungimea cuvantului ' + cuvant + ' este: ' + inttostr(length(cuvant)) + 'caractere');
  readln;
end.
 