program array_first_positive;
{
    Найти номер и значение первого положительного элемента массива.
}
const
    N = 10;
    R = 1000;
    TAB = 5;
var
    C: array[1..N] of integer;
    i, ch: byte;
begin

    randomize;
    ch := (R div 4) * 3;
    for i := 1 to N do begin
        C[i] := random(R) - ch;
        write(C[i]:TAB);
    end;
    writeln;
    for i := 1 to N do
        if C[i] > 0 then begin
            writeln(i, ' ', C[i]);
            break;
        end;
end.