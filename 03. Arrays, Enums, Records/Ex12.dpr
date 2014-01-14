program Ex12;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  NrHex, NrBinar: string;
  i: integer;
const
  ConversieHexBinar: array[0..15] of string = ('0000', '0001', '0010', '0011', '0100', '0101', '0110', '0111',
    '1000', '1001', '1010', '1011', '1100', '1101', '1110', '1111');
resourcestring
  cIntroducetiNrHex = 'Introduceti numarul in hex: ';
  cNumarulInBinar = 'Numarul introdus in binar: %s';
  cNumarInHexIncorect = 'Numarul in hex introdus este incorect!';
begin
  NrBinar := '';
  Write(cIntroducetiNrHex);
  Readln(NrHex);

  for i := 1 to length(NrHex) do
    case UpCase(NrHex[i]) of
      '0': NrBinar := NrBinar + ConversieHexBinar[0];
      '1': NrBinar := NrBinar + ConversieHexBinar[1];
      '2': NrBinar := NrBinar + ConversieHexBinar[2];
      '3': NrBinar := NrBinar + ConversieHexBinar[3];
      '4': NrBinar := NrBinar + ConversieHexBinar[4];
      '5': NrBinar := NrBinar + ConversieHexBinar[5];
      '6': NrBinar := NrBinar + ConversieHexBinar[6];
      '7': NrBinar := NrBinar + ConversieHexBinar[7];
      '8': NrBinar := NrBinar + ConversieHexBinar[8];
      '9': NrBinar := NrBinar + ConversieHexBinar[9];
      'A': NrBinar := NrBinar + ConversieHexBinar[10];
      'B': NrBinar := NrBinar + ConversieHexBinar[11];
      'C': NrBinar := NrBinar + ConversieHexBinar[12];
      'D': NrBinar := NrBinar + ConversieHexBinar[13];
      'E': NrBinar := NrBinar + ConversieHexBinar[14];
      'F': NrBinar := NrBinar + ConversieHexBinar[15];
    end;
  Writeln(Format(cNumarulInBinar, [NrBinar]));
  Readln;
end.

