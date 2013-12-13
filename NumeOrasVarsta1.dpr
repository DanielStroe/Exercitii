program NumeOrasVarsta1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  NumePersoana, Oras :string;
  Varsta: integer;
begin
write('Numele persoanei: ');
Readln(NumePersoana);
write('Orasul: ');
Readln(Oras);
Write('Varsta persoanei: ');
Readln(Varsta);
Writeln('Ati introdus persoana: '+ NumePersoana + ' din orasul ' + Oras +
  ' cu varsta: ' + inttostr(Varsta));
  Readln;
end.
