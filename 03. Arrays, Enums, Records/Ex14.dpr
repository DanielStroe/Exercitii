program Ex14;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TPersoana = record
    Nume: string;
    Varsta: Integer;
    Casatorit: string;
  end;
var
  Fisier: TextFile;
  InfPers:TPersoana;
  resourcestring
    cInfPersoana = ' Nume: %s' + #13#10 +' Varsta: %d' + #13#10 + ' Casatorit: %s';
begin
  AssignFile(Fisier,'Ex14.csv');
  Reset(Fisier);

  Readln(Fisier,InfPers.Nume);
  Readln(Fisier,InfPers.Varsta);
  Readln(Fisier,InfPers.Casatorit);
  CloseFile(Fisier);

  Writeln(Format(cInfPersoana,[InfPers.Nume,InfPers.Varsta,InfPers.Casatorit]));
  Readln;
end.

 