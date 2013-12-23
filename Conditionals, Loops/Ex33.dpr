program Ex33;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  n, i, j, aux: Integer;
begin
  Write('Introduceti n: ');
  Readln(n);
  for i := 1 to n do
  begin
    aux := 1;
    for j := 1 to 2 * n - 1 do
      if ((j >= n - i + 1) and (j <= n + i - 1)) then
      begin
        if j < n then
        begin
          Write(inttostr(aux));
          Inc(aux);
        end
        else
          if j > n then
          begin
            Dec(aux);
            Write(inttostr(aux));
          end
          else
            Write(inttostr(i));
      end
      else Write(' ');
    Writeln;
  end;
  for i := n - 1 downto 1 do
  begin
    aux := 1;
    for j := 1 to 2 * n - 1 do
      if ((j >= n - i + 1) and (j <= n + i - 1)) then
        if j < n then
        begin
          Write(inttostr(aux));
          Inc(aux);
        end
        else
          if j > n then
          begin
            Dec(aux);
            Write(inttostr(aux));
          end
          else
            Write(inttostr(i))
        else write(' ');
          Writeln;
  end;
  Readln;
end.

