program array_next_more;
{
    Вывести элементы числового массива, которые больше, чем элементы, стоящие перед ними.
}

{
    Например, дан массив [3, 9, 8, 4, 5, 1]. Следует вывести числа 9 и 5, так как перед ними стоят соответственно числа 3 и 4, которые меньше их.
}
const
    N = 20;
var
    a: array[1..N] of integer;
    i: byte;
begin
    randomize;
    for i := 1 to N do begin
        a[i] := random(100);
        write(a[i]:4);
    end;
    writeln;
    writeln('Элементы больше предыдущего: ');
    for i := 1 to N-1 do
        if a[i] < a[i+1] then
            write(a[i+1]:4);
    writeln;
end.