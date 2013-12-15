program ConcatenarePrimulCaracter25;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  sir1, sir2, sir3, sir4, sir5: string;
begin
  write('primul cuvant: ');
  readln(sir1);
  write('al doilea cuvant: ');
  readln(sir2);
  write('al 3lea cuvant: ');
  readln(sir3);
  write('al 4lea cuvant: ');
  readln(sir4);
  write('al 5lea cuvant: ');
  readln(sir5);
  write(sir1[1] + sir2[1] + sir3[1] + sir4[1] + sir5[1]);
  readln;
end.
