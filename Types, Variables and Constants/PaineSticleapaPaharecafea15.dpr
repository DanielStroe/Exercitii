program PaineSticleapaPaharecafea15;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  PretPaine = 1;
  PretPaharCafea = 1.5;
  PretSticlaApaPlata = 2.8;
var
  NrPaine, NrPahareCafea, NrSticleApa:integer;
  CostPaine, CostPahareCafea, CostSticleApa, Total: double;
begin
  write('Cate paini vreti sa cumparati? ');
  readln(NrPaine);
  CostPaine := PretPaine * NrPaine;
  write('Cate pahare cafea vreti sa cumparati? ');
  readln(NrPahareCafea);
  CostPahareCafea := PretPaharCafea * NrPahareCafea;
  write('Cate sticle de apa doriti sa cumparati? ');
  readln(NrSticleApa);
  CostSticleApa := PretSticlaApaPlata * NrSticleApa;
  Total := CostPaine + CostPahareCafea + CostSticleApa;
  write('Cost total: ' + floattostr(Total));
  readln;

end.
 