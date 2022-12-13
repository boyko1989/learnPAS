program even_odd_numbers;
{
    Из двух чисел с разной четностью вывести на экран нечетное число
}
var
    i, j: integer;
    C: array[1..2] of integer;    
    S: array[1..2] of string;
begin
    readln(C[1], C[2]);

    if C[1] mod 2 = 0 then S[1] := 'Чёт'
        else S[1] := 'Нечет';

    if C[2] mod 2 = 0 then S[2] := 'Чёт'
        else S[2] := 'Нечет';

    for i := 1 to 2 do begin       
        write('| ',C[i]:7, ' |');
    end; 
    writeln;
        for j := 1 to 2 do begin       
            write('|   ',S[j]:8, ' |');
        end;
        writeln;
end.