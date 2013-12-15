program MinMaxByteInteger24;

{$APPTYPE CONSOLE}

uses
  SysUtils;

begin
  writeln('Dimensiunea unui byte: ' + inttostr(sizeof(Byte)));
  writeln('Dimensiunea unui integer: ' + inttostr(sizeof(integer)));
  writeln('Minimul unui byte: ' + inttostr(low(byte)) + '; Maximul unui byte: ' + inttostr(high(Byte)));
  writeln('Minimul unui integer: ' + inttostr(low(integer)) + '; Maximul unui integer: ' + inttostr(high(integer)));
  readln;
end.
 