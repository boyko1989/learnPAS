program array_first_positive;
{
    Заменить элементы массива на противоположные
}
const
    N = 10;
    R = 1000;
    TAB = 5;
var
    C: array[1..N] of integer;
    i, ch: word;
begin
    ch := (R div 4) * 3;
    randomize;
    for i := 1 to N do begin
        C[i] := random(R) - ch;
        write(C[i]:6);
    end;
    writeln;
    for i := 1 to N do
        C[i] := -1 * C[i];
    for i := 1 to N do
        write(C[i]:6);
    writeln;
end.