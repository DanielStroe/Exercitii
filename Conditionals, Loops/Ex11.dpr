program Ex11;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  TipFolosit, ValInt: Integer;
  ValDouble: Double;
  ValString: string;
resourcestring
  mesaj = 'Introduceti o valoare de tip %s: ';
begin
  Writeln('Ce tip doriti sa introduceti? 1.Int 2.Double 3.String');
  Readln(TipFolosit);
  case TipFolosit of
    1: begin
        Write(Format(mesaj, ['int']));
        Readln(ValInt);
        Writeln(inttostr(inc(ValInt)));
      end;
    2: begin
        Write(Format(mesaj, ['double']));
        Readln(ValDouble);
        Write(floattostr(ValDouble + 1));
      end;
    3: begin
        Write(Format(mesaj, ['string']));
        Readln(ValString);
        Write(ValString + '*');
      end;
  else Write('Optiune incorecta!');
  end;
  Readln;
end.

