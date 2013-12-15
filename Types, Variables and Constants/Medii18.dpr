program Medii18;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  nr1, nr2, nr3, nr4, nr5:integer;
  MediaAritmetica, MediaArmonica: double;
begin
  write('Primul numar: ');
  readln(nr1);
  write('Al doilea numar: ');
  readln(nr2);
  write('Al treilea numar: ');
  readln(nr3);
  write('Al 4lea numar: ');
  readln(nr4);
  write('Al 5lea numar: ');
  readln(nr5);
  MediaAritmetica := (nr1 + nr2 + nr3 + nr4 + nr5) / 5;
  MediaArmonica := 5 / (1/nr1 + 1/nr2 + 1/nr3 + 1/nr4 + 1/nr5) ;
  writeln('Media artimetica = ' + floattostr(MediaAritmetica));
  writeln('Media armonica = ' + floattostr(MediaArmonica));
  readln;
end.
 