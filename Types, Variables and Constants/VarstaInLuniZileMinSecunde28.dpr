program VarstaInLuniZileMinSecunde28;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  NumePers: string;
  VarstaAni: integer;
begin
  write('Nume persoana: ');
  readln(NumePers);
  write('Varsta in ani: ');
  readln(VarstaAni);
  writeln('Varsta in luni: ' + inttostr(VarstaAni * 12));
  writeln('Varsta in zile: ' + inttostr(VarstaAni * 365));
  writeln('Varsta in ore: ' + inttostr(VarstaAni * 365 * 24));
  writeln('Varsta in minute: ' + inttostr(VarstaAni * 365 * 1440));
  writeln('Varsta in secunde: ' + inttostr(VarstaAni *365 * 86400));
  readln;
end.
 