program ZiuaSapt30;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  data: TdateTime;
  Zi,Luna,An: string;
begin
  write('Introduceti ziua: ');
  readln(Zi);
  write('Introduceti luna: ');
  readln(Luna);
  write('Introduceti anul: ');
  readln(An);
  data := EncodeDate(strtoint(An), strtoint(Luna), strtoint(Zi));
  write(LongDayNames[DayOfWeek(data)] + '--nr zilei: ' + inttostr(DayOfWeek(data)));
  readln;
end.
 