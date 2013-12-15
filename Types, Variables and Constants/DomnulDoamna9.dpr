program DomnulDoamna10;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
 NumePersoana: string;
 DurataAni, Procent: integer;
 Bonus: double;
begin
  write('Introduceti numele persoanei: ');
  readln(NumePersoana);
  write('Durata ani: ');
  readln(DurataAni);
  write('Procent: ');
  readln(Procent);
  write('si un mic bonus de: ');
  readln(Bonus);
  write('Domnule/Doamna ' + NumePersoana +  ', dupa ce am urmarit munca dumneavoastra cu noi in ultimii ' +
     inttostr(DurataAni) +  ' ani, credem ca meritati o crestere salariala de ' + inttostr(Procent) +
     '% si de asemenea un bonus de ' + floattostr(Bonus) + ' lei.');


  readln;
end.
 