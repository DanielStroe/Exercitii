program DataOraCurenta26;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  DataCurenta, OraCurenta: string;
begin
  DataCurenta := datetostr(Date);
  OraCurenta := timetostr(Time);
  writeln('Data: ' + DataCurenta);
  writeln('Ora: ' + OraCurenta);
  readln;
end.
 