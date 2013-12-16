program ZiuaSapt30;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  NrZi, Zi, Luna, An, UltimeleDouaCifreDinAn: integer;
begin
  write('Introduceti ziua: ');
  readln(Zi);
  write('Introduceti luna: ');
  readln(Luna);
  write('Introduceti anul: ');
  readln(An);

//  data := EncodeDate(strtoint(An), strtoint(Luna), strtoint(Zi));
//  write(LongDayNames[DayOfWeek(data)] + '--nr zilei: ' + inttostr(DayOfWeek(data)));

// Am gasit aici http://www.jimloy.com/math/day-week.htm formula:
// W=C+Y+L+M+D (mod 7) ; dar n-am inteles prea bine

// pe wiki: http://en.wikipedia.org/wiki/Determination_of_the_day_of_the_week
// nrzi = ( d + m + y(ultimele 2 cifre) + y div 4  + c )mod 7 ...c=6 deoarece 20 este divizibil cu 4,
// in rest este  4-2-0 (in functie de restul impartirii)
  UltimeleDouaCifreDinAn := An mod 100;
  NrZi := ((Zi + Luna + UltimeleDouaCifreDinAn + UltimeleDouaCifreDinAn div 4 + 6) mod 7) - 1;
// am pus -1 deoarece la noi ziua nr 1 este luni, nu duminica 
  writeln('numarul zilei din sapt este: ' + inttostr(NrZi));
  readln;
end.
