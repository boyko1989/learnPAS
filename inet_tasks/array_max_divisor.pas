program array_max_divisor;
{
    Все элементы массива поделить на значение наибольшего элемента этого массива.
}

{
    Задача состоит из двух подзадач:
            Поиск максимума.
            Деление на него элементов массива.
}
const
    M = 10;
    R = 17;
    TAB = 4;
var
    C: array[1..M] of word;
    maxC: word;
    i: byte;
begin
    randomize;
    maxC := 0;
    write('Исходный массив: ');
    for i := 1 to M do begin
        C[i] := random(R);
        write (C[i]:TAB);
        if maxC < C[i] then
            maxC := C[i];
    end;
    writeln;
    writeln('Максимум: ', maxC);
    writeln('Частные: ');
    for i := 1 to M do begin
        write(C[i]/maxC:6:2)
    end;
    writeln;
end.